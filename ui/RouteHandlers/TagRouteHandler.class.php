<?php

class TagRouteHandler
{
    public function init()
    {
        $app = Slim::getInstance();
        $middleware = new Middleware();

        $app->get("/all/tags", array($middleware, "authUserIsLoggedIn"), array($this, "tagsList"))->via("POST")->name("tags-list");

        $app->get("/tag/:id/:subscribe", array($this, "tagSubscribe")
        )->name("tag-subscribe");
        
        $app->get("/tag/:id", array($this, "tagDetails")
        )->via("POST")->name("tag-details");
    }

    public function tagsList()
    {
        $app = Slim::getInstance();
        $userDao = new UserDao();
        $tagDao = new TagDao();

        $user_id = UserSession::getCurrentUserID();
        $user_tags = $userDao->getUserTags($user_id);
        $foundTags = null;
        $name = "";

        if ($app->request()->isPost()) {
            $post = $app->request()->post();

            if (isset($post['search'])) {
                $name = $post['searchName'];
                $foundTags = $tagDao->searchForTag($name);
            }

            if (isset($post['listAll'])) {
                $foundTags = $tagDao->getTags(null);
            }
        }
        
        $app->view()->appendData(array(
            "user_tags" => $user_tags,
            "foundTags" => $foundTags,
            'searchedText'  => $name
        )); 
        
        $app->render("tag/tag-list.tpl");
    }

    public function tagSubscribe($id, $subscribe)
    {
        $app = Slim::getInstance();
        $tagDao = new TagDao();
        $userDao = new UserDao();

        $tag = $tagDao->getTag($id);
        $user_id = UserSession::getCurrentUserID();
        $current_user = $userDao->getUser($user_id);

        if (!is_object($current_user)) {
            $app->flash("error", "Login required to access page");
            $app->redirect($app->urlFor("login"));
        }   
        
        $displayName = $current_user->getDisplayName();
        
        if ($subscribe == "true") {
            $userLikeTag = $userDao->addUserTagById($user_id, $id);            
            if ($userLikeTag) {
                $app->flash("success", "Successfully added tag, {$tag->getLabel()}, to subscription list");
            } else {
                $app->flash("error", "Unable to save tag, {$tag->getLabel()}, for user $displayName");
            }   
        }   
        
        if ($subscribe == "false") {
            $removedTag = $userDao->removeUserTag($user_id, $id);
            if ($removedTag) {
                $app->flash("success", "Successfully removed tag {$tag->getLabel()} for user $displayName");
            } else {
                $app->flash("error", "Unable to remove tag {$tag->getLabel()} for user $displayName");
            }
        }   
        
        $app->response()->redirect($app->request()->getReferer());
    }

    public function tagDetails($id)
    {
        $app = Slim::getInstance();
        $tagDao = new TagDao();
        $projectDao = new ProjectDao();
        $orgDao = new OrganisationDao();
        $userDao = new UserDao();

        $tag = $tagDao->getTag($id);
        $label = $tag->getLabel();
        $tag_id = $tag->getId();
        if (is_null($tag_id)) {
            header("HTTP/1.0 404 Not Found");
            die;
        }

        $tasks = $tagDao->getTasksWithTag($tag_id, 10);
        for ($i = 0; $i < count($tasks); $i++) {
            $tasks[$i]['Project'] = $projectDao->getProject($tasks[$i]->getProjectId());
            $tasks[$i]['Org'] = $orgDao->getOrganisation($tasks[$i]['Project']->getOrganisationId());
        }

        $app->view()->setData('tasks', $tasks);
        
        if (UserRouteHandler::isLoggedIn()) {

            $user_id = UserSession::getCurrentUserID();        
            $app->view()->appendData(array(
                    "user_id" => $user_id
            ));

            $user_tags = $userDao->getUserTags($user_id);
            if ($user_tags && count($user_tags) > 0) {
                $app->view()->appendData(array(
                        'user_tags' => $user_tags
                )); 
                foreach ($user_tags as $userTag) {
                    if ($label == $userTag->getLabel()) {
                        $app->view()->appendData(array(
                           'subscribed' => true
                        )); 
                    }
                }
            }
        }

        $numTaskTypes = Settings::get("ui.task_types");
        $taskTypeColours = array();
        
        for($i=1; $i <= $numTaskTypes; $i++) {
            $taskTypeColours[$i] = Settings::get("ui.task_{$i}_colour");
        }

        $top_tags= $tagDao->getTopTags(30);
        $app->view()->appendData(array(
                 "tag" => $tag,
                 "top_tags" => $top_tags,
                 "taskTypeColours" => $taskTypeColours
        )); 
        $app->render("tag/tag.tpl");
    }
}

$route_handler = new TagRouteHandler();
$route_handler->init();
unset ($route_handler);
