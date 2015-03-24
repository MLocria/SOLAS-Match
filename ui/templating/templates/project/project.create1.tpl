{include file="header.tpl"}

    <span class="hidden">

        <!-- Parameters... -->
        <div id="userid">{$user_id}</div>
        <div id="orgid">{$org_id}</div>
        <div id="maxfilesize">{$maxFileSize}</div>

        <!-- Settings... -->
        <div id="SiteLocation">{Common\Lib\Settings::get('site.location')}</div>
        <div id="SiteAPI">{Common\Lib\Settings::get('site.api')}</div>
        <div id="imageMaxFileSize">{Common\Lib\Settings::get('project_images.max_size')}</div>
        <div id="imageMaxWidth">{Common\Lib\Settings::get('project_images.max_width')}</div>
        <div id="imageMaxHeight">{Common\Lib\Settings::get('project_images.max_height')}</div>
        <div id="supportedImageFormats">{Common\Lib\Settings::get('project_images.supported_formats')}</div>

        <!-- Templates... -->
        <div id="template_language_options">
            {foreach $languages as $language}
                <option value="{$language->getCode()}" >{$language->getName()}</option>
            {/foreach}
        </div>

        <div id="template_country_options">
            {foreach $countries as $country}
                <option value="{$country->getCode()}">{$country->getName()}</option>
            {/foreach}
        </div>

    </span>

    <div class="grid_8">
        <div class="page-header">
            <h1>
                {Localisation::getTranslation('project_create_create_a_project')} <small>{Localisation::getTranslation('project_create_0')}</small><br>   
                <small>
                    {Localisation::getTranslation('common_denotes_a_required_field')}
                </small>
            </h1>
        </div>           
    </div>  

    <div class="well pull-left" style="margin-bottom: 50px">

        <div id="placeholder_for_errors_1"></div>

            <div id ="projFormTop" class="pull-left">
            <div class="projFormTopBlock">
                <div class="projFormInput">
                    <h2>{Localisation::getTranslation('common_title')}: <span style="color: red">*</span></h2>
                    <p class="desc">{Localisation::getTranslation('project_create_1')}</p>
                    <textarea wrap="soft" cols="1" rows="3" style="width: 400px" id="project_title"></textarea>
                    <p style="margin-bottom:40px;"></p>
                </div>
                <div class="projFormInput">
                    <h2>{Localisation::getTranslation('common_description')}: <span style="color: red">*</span></h2>
                    <p class="desc">{Localisation::getTranslation('project_create_2')}</p>
                    <textarea wrap="soft" cols="1" rows="8" style="width: 400px" id="project_description"></textarea>
                    <p style="margin-bottom:37.5px;"></p>
                </div>
                <div class="projFormInput">
                    <h2>{Localisation::getTranslation('common_impact')}: <span style="color: red">*</span></h2>
                    <p class="desc">
                        {Localisation::getTranslation('project_create_3')}<br/> {Localisation::getTranslation('project_create_4')}
                    </p>
                    <textarea wrap="soft" cols="1" rows="3" style="width: 400px" id="project_impact"></textarea>
                    <p style="margin-bottom:37.5px;"></p>
                </div>
                <div class="projFormInput">
                <h2>{Localisation::getTranslation('common_reference')}:</h2>
                <p class="desc">{Localisation::getTranslation('project_create_5')}</p>
                <input type="text" style="width: 400px" id="project_reference" />
                </div>
            </div>
            
            <div class="projFormTopBlock">
                <div class="projFormInput">
                    <div style="margin-bottom:25px;">
                        <h2>{Localisation::getTranslation('project_create_source_text')}: <span style="color: red">*</span></h2>
                        <p id="source_text_desc" class="desc"></p>
                        <input type="file" id="projectFile" />
                    </div>
                </div>
                <div class="projFormInput">
                    <div style="margin-bottom:25px;">
                        <h2>{Localisation::getTranslation('common_project_image')}</h2>
                        <p id="image_file_desc" class="desc"></p>
                        <input type="file" id="projectImageFile" />
                    </div>
                </div>
                <div class="projFormInput">  
                    <div style="margin-bottom: 25px;">
                        <h2>{Localisation::getTranslation('common_word_count')}: <span style="color: red">*</span></h2>
                        <p class="desc">{Localisation::getTranslation('common_approximate_or_use_a_website_such_as')}
                            <a href="http://wordcounttool.net/" target="_blank">{Localisation::getTranslation('task_create_word_count_tool')}</a>
                        </p>
                        <input type="text"  maxlength="6" id="wordCountInput" style="width: 400px"/>
                    </div>
                </div>
                <div class="projFormInput">
                    <div style="margin-bottom:25px;">
                        <h2>{Localisation::getTranslation('common_deadline')}: <span style="color: red">*</span></h2>
                        <p class="desc">{Localisation::getTranslation('project_create_7')}</p>
                        <p>
                            {Localisation::getTranslation('common_day')}:
                            <select id="select_for_selectedDay" id="selectedDay" style="width: 3.5em">
                            </select>
                            {Localisation::getTranslation('common_month')}:
                            <select onchange="selectedMonthChanged()" id="selectedMonth" style="width: 7.3em">
                                {html_options options=$month_list selected=$selected_month}
                            </select>
                            {Localisation::getTranslation('common_year')}:
                            <select onchange="selectedYearChanged()" id="selectedYear" style="width: 4.5em">
                                {html_options options=$year_list selected=$selected_year}
                            </select>
                        </p>
                        <p>
                            {Localisation::getTranslation('common_hour')}:
                            <select id="selectedHour" style="width: 3.5em">
                                {html_options options=$hour_list selected=$selected_hour}
                            </select>
                            {Localisation::getTranslation('common_minute')}:
                            <select selectedMinute="selectedMinute" style="width: 3.5em">
                                {html_options options=$minute_list selected=$selected_minute}
                            </select>
                        </p>
                    </div>
                </div>
                <div class="projFormInput">
                    <div style="margin-bottom:25px;">
                        <h2>{Localisation::getTranslation('common_tags')}:</h2>
                        <p class="desc">
                            {Localisation::getTranslation('project_create_8')}
                            <br />
                            {Localisation::getTranslation('project_create_separated_by')} {Localisation::getTranslation('project_create_seperator')}. 
                            {Localisation::getTranslation('project_create_for_multiword_tags_joinwithhyphens')}
                        </p>
                        <input type="text" id="tagList" style="width: 400px" />
                    </div>
                </div>
                <div class="projFormInput">
                    <div style="margin-bottom:25px;">
                        <h2>{Localisation::getTranslation('project_create_publish_tasks')}:</h2>
                        <p class="desc">
                            {Localisation::getTranslation('common_if_checked_tasks_will_appear_in_the_tasks_stream')}
                        </p>
                        <input type="checkbox" id="publish" checked />
                    </div>
                </div>
                <div class="projFormInput">
                    <div style="margin-bottom:25px;">
                        <h2>{Localisation::getTranslation('common_track_project')}:</h2>
                        <p class="desc">{Localisation::getTranslation('project_create_12')}</p>
                        <input type="checkbox" id="trackProject" checked />
                    </div>
                </div>
            </div>
        </div>
        <div id ="projFormBottom">
            <div id="loading_warning">
                <p>{Localisation::getTranslation('common_loading')}</p>
            </div>
            <div id="projFormBottomBlockLeft">
                <div id="sourceLanguageDiv">
                    <h2>{Localisation::getTranslation('common_source_language')}: <span style="color: red">*</span></h2>
                    <select id="sourceLanguageSelect" style="width: 400px">
                        {foreach $languages as $language}
                            <option value="{$language->getCode()}" >{$language->getName()}</option>
                        {/foreach}
                    </select>
                    <select id="sourceCountrySelect" style="width: 400px">
                        {foreach $countries as $country}
                            <option value="{$country->getCode()}">{$country->getName()}</option>
                        {/foreach}
                    </select>
                </div>
                <h2>{Localisation::getTranslation('project_create_target_languages')}: <span style="color: red">*</span></h2>
                <br />
            </div>
            <div id="projFormBottomBlockRight">
                <h2>{Localisation::getTranslation('common_task_type')}: <span style="color: red">*</span></h2>
                 <p class="desc" style ="margin-bottom:63px">{Localisation::getTranslation('project_create_9')}</p>
                 <div> <!-- <table border="0" width="100%"> -->
                     <div>
                         <div class="proj-task-type-text pull-left" title="{Localisation::getTranslation('project_create_10')}">
                             <strong>{Localisation::getTranslation('common_segmentation')}</strong>
                         </div>
                         <div class="proj-task-type-text pull-left" title="{Localisation::getTranslation('common_create_a_translation_task_for_volunteer_translators_to_pick_up')}">
                             <strong>{Localisation::getTranslation('common_translation')}</strong>
                         </div>
                         <div class="proj-task-type-text pull-left" title="{Localisation::getTranslation('common_create_a_proofreading_task_for_evaluating_the_translation_provided_by_a_volunteer')}">
                             <strong>{Localisation::getTranslation('common_proofreading')}</strong>
                         </div>
                     </div>
                 </div> <!-- </table> -->
             </div>
         </div>
         <div id="targetLangSelectDiv" class="pull-left"></div>
         <div id="targetLangContainer" class="pull-left"> 
             <div id="placeholder_for_maxTargetsReached"></div>
                 <button onclick="addMoreTargetLanguages()" class="btn btn-success" id="addTargetLanguageBtn">
                     <i class="icon-upload icon-white"></i> 
                     {Localisation::getTranslation('project_create_add_more_target_languages')}
                 </button>
                 <button onclick="removeTargetLanguage()" class="btn btn-inverse" id="removeBottomTargetBtn" disabled="true">
                    <i class="icon-fire icon-white"></i> 
                    {Localisation::getTranslation('common_remove')}
                 </button>
             </div>

             <div id="placeholder_for_errors_2"></div>
          
             <div class="" style="text-align:center; width:100%">
                 <div class="pull-left width-50">
                     <p style="margin-bottom:20px;"></p>
                     <a href="{Common\Lib\Settings::get('site.location') . 'org/dashboard'}" class="btn btn-danger">
                         <i class="icon-ban-circle icon-white"></i>
                         {Localisation::getTranslation('common_cancel')}
                     </a>
                     <p style="margin-bottom:20px;"></p>
                 </div>
                 <div class="pull-left width-50">
                     <p style="margin-bottom:20px;"></p>
                     <button onclick="submitForm()" class="btn btn-success">
                         <i class="icon-upload icon-white"></i> {Localisation::getTranslation('common_create_project')}
                     </button>
                     <p style="margin-bottom:20px;"></p>
                 </div>
             </div>
         </div>
    
{include file="footer.tpl"}