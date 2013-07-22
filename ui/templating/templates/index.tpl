{include file="header.tpl" body_id="home"}

{if !isset($user)}
    <div class="hero-unit">
        <h1>{Localisation::getTranslation(Strings::INDEX_TRANSLATION_COMMONS)}</h1>
        <p>{Localisation::getTranslation(Strings::INDEX_0)}</p>
        <p>
            <a class="btn btn-success btn-large" href="{urlFor name="register"}">
                <i class="icon-star icon-white"></i> {Localisation::getTranslation(Strings::COMMON_REGISTER)}
            </a>
            <a class="btn btn-primary btn-large" href="{urlFor name="login"}">
                <i class="icon-share icon-white"></i> {Localisation::getTranslation(Strings::COMMON_LOG_IN)}
            </a>
        </p>
    </div>
{/if}

{if isset($flash['error'])}
    <div class="alert alert-error">
        <a class="close" data-dismiss="alert" href="{urlFor name='home'}">×</a>
        <p><strong>{Localisation::getTranslation(Strings::COMMON_WARNING)}! </strong>{$flash['error']}</p>
    </div>
{/if}

{if isset($flash['info'])}
    <div class="alert alert-info">
        <a class="close" data-dismiss="alert" href="{urlFor name='home'}">×</a>
        <p><strong>{Localisation::getTranslation(Strings::COMMON_NOTE)}: </strong>{$flash['info']}</p>
    </div>
{/if}

{if isset($flash['success'])}
    <div class="alert alert-success">
        <a class="close" data-dismiss="alert" href="{urlFor name='home'}">×</a>
        <p><strong>{Localisation::getTranslation(Strings::COMMON_SUCCESS)}! </strong>{$flash['success']}</p>
    </div>
{/if}

    <div class="page-header">
        <h1>
            {Localisation::getTranslation(Strings::INDEX_TRANSLATION_TASKS)} <small>{Localisation::getTranslation(Strings::INDEX_1)}</small>
            <a href="{urlFor name='org-search'}" class="pull-right btn btn-primary">
                <i class="icon-search icon-white"></i> {Localisation::getTranslation(Strings::COMMON_SEARCH_FOR_ORGANISATIONS)}
            </a>
        </h1>
    </div>

    <div class="row">
        <div class="span4 pull-right">
            {include file="tag/tags.user-tags.inc.tpl"}	
            {include file="tag/tags.top-list.inc.tpl"}
            {if isset($statsArray) && is_array($statsArray)}
                {include file="statistics.tpl"}
            {/if}
            <div id="globe" style="text-align: center">
                <br/>
                <script type="text/javascript" src="http://jh.revolvermaps.com/p.js"></script><script type="text/javascript">rm2d_ki101('7','300','150','7puikkj5km8','ff00ff',0);</script>
                <br/>
            </div>
        </div>

        <div class="pull-left" style="max-width: 70%; overflow-wrap: break-word; word-break:break-all;">

            {if isset($user)}
                <div is="x-task-stream" user-id="{$user->getId()}" id="taskStream"></div>
            {else}
                <div is="x-task-stream" user-id="0" id="taskStream"></div>
            {/if}

            <script type="text/javascript" src="{urlFor name="home"}ui/dart/deploy/web/packages/browser/dart.js"></script>
            <script type="application/dart" src="{urlFor name="home"}ui/dart/deploy/web/Routes/Users/home.dart"></script>


            {if !isset($user)}
                <div class="alert">
                    <p>{Localisation::getTranslation(Strings::INDEX_6)}</p>
                    <p><a href={urlFor name="register"}>{Localisation::getTranslation(Strings::INDEX_REGISTER_NOW)}</a> {Localisation::getTranslation(Strings::INDEX_7)}</p>
                </div>
            {/if}      
        </div>
    </div>
            
{include file="footer.tpl"}
