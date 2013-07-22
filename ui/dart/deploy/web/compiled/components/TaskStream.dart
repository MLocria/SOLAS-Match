// Auto-generated from TaskStream.html.
// DO NOT EDIT.

library SolasMatchDart;

import 'dart:html' as autogenerated;
import 'dart:svg' as autogenerated_svg;
import 'package:web_ui/web_ui.dart' as autogenerated;
import 'package:web_ui/observe/observable.dart' as __observe;
import "package:web_ui/web_ui.dart";
import "dart:async";
import "dart:json";
import '../../DataAccessObjects/TaskDao.dart';
import '../../DataAccessObjects/ProjectDao.dart';
import '../../DataAccessObjects/OrgDao.dart';
import '../../DataAccessObjects/LanguageDao.dart';
import '../../lib/models/Task.dart';
import '../../lib/models/Tag.dart';
import '../../lib/models/Project.dart';
import '../../lib/models/Org.dart';
import '../../lib/models/Language.dart';
import '../../lib/Settings.dart';
import '../../lib/Localisation.dart';



class TaskStream extends WebComponent with Observable 
{
  /** Autogenerated from the template. */

  autogenerated.ScopedCssMapper _css;

  /** This field is deprecated, use getShadowRoot instead. */
  get _root => getShadowRoot("x-task-stream");
  static final __html1 = new autogenerated.BRElement(), __html10 = new autogenerated.Element.html('<i class="icon-refresh icon-white"></i>'), __html11 = new autogenerated.Element.tag('small'), __html12 = new autogenerated.Element.html('<span style="color: red">*</span>'), __html13 = new autogenerated.Element.tag('template'), __html14 = new autogenerated.Element.html('<div class="task" style="word-break: break-all; overflow-wrap: break-word;">\n              <h2>\n                <a></a>\n              </h2>\n              <p></p>\n              <p></p>\n              <p></p>\n              <p>\n                <template></template>\n              </p>\n              <p></p>\n              <p class="task_details"></p>\n              <p></p>\n              <template></template>\n              <br>\n            </div>'), __html15 = new autogenerated.Element.tag('template'), __html16 = new autogenerated.Element.html('<span class="label label-info" style="background-color: {{taskOneColour}}"></span>'), __html17 = new autogenerated.Element.tag('template'), __html18 = new autogenerated.Element.html('<span class="label label-info" style="background-color: {{taskTwoColour}}"></span>'), __html19 = new autogenerated.Element.tag('template'), __html2 = new autogenerated.HRElement(), __html20 = new autogenerated.Element.html('<span class="label label-info" style="background-color: {{taskThreeColour}}"></span>'), __html21 = new autogenerated.Element.tag('template'), __html22 = new autogenerated.Element.html('<span class="label label-info" style="background-color: {{taskFourColour}}"></span>'), __html23 = new autogenerated.Element.tag('strong'), __html24 = new autogenerated.Element.tag('strong'), __html25 = new autogenerated.Element.tag('template'), __html26 = new autogenerated.Element.html('<a class="label"><span class="label"></span></a>'), __html27 = new autogenerated.Element.tag('strong'), __html28 = new autogenerated.Element.tag('strong'), __html29 = new autogenerated.Element.tag('strong'), __html3 = new autogenerated.Element.tag('h3'), __html30 = new autogenerated.Element.tag('template'), __html31 = new autogenerated.ParagraphElement(), __html32 = new autogenerated.AnchorElement(), __html33 = new autogenerated.AnchorElement(), __html34 = new autogenerated.Element.tag('template'), __html35 = new autogenerated.ButtonElement(), __html36 = new autogenerated.ParagraphElement(), __html4 = new autogenerated.Element.html('<table>\n            <thead>\n              <tr><th></th>\n              <th></th>\n              <th></th>\n            </tr></thead>\n            <tbody>\n              <tr>\n                <td>\n                  <select name="taskTypes"></select>\n                </td>\n                <td>\n                  <select name="sourceLanguage"></select>\n                </td>\n                <td>\n                  <select name="targetLanguage"></select>\n                </td>\n              </tr>\n              <tr>\n                <td>\n                  <button value="Filter" class="btn btn-primary"></button>\n                </td>\n              </tr>\n            </tbody>  \n          </table>'), __html5 = new autogenerated.Element.html('<span style="color: red">*</span>'), __html6 = new autogenerated.Element.html('<span style="color: red">*</span>'), __html7 = new autogenerated.OptionElement(), __html8 = new autogenerated.OptionElement(), __html9 = new autogenerated.OptionElement(), __shadowTemplate = new autogenerated.DocumentFragment.html('''
        <template></template>
        <template></template>
        <template></template>
        <br>
      ''');
  autogenerated.Element __e23, __e82, __e85;
  autogenerated.Template __t;

  void created_autogenerated() {
    var __root = createShadowRoot("x-task-stream");
    setScopedCss("x-task-stream", new autogenerated.ScopedCssMapper({"x-task-stream":"[is=\"x-task-stream\"]"}));
    _css = getScopedCss("x-task-stream");
    __t = new autogenerated.Template(__root);
    __root.nodes.add(__shadowTemplate.clone(true));
    __e23 = __root.nodes[1];
    __t.conditional(__e23, () => userId > 0, (__t) {
      var __e1, __e10, __e13, __e16, __e18, __e19, __e22, __e3, __e5, __e7;
      __e1 = __html3.clone(true);
      var __binding0 = __t.contentBind(() => Localisation.getTranslation("index_filter_available_tasks"), false);
      __e1.nodes.add(__binding0);
      __e19 = __html4.clone(true);
      __e3 = __e19.nodes[1].nodes[1].nodes[0];
      var __binding2 = __t.contentBind(() => Localisation.getTranslation("common_task_type"), false);
      __e3.nodes.add(__binding2);
      __e5 = __e19.nodes[1].nodes[1].nodes[2];
      var __binding4 = __t.contentBind(() => Localisation.getTranslation("common_source_language"), false);
      __e5.nodes.addAll([__binding4,
          __html5.clone(true)]);
      __e7 = __e19.nodes[1].nodes[1].nodes[4];
      var __binding6 = __t.contentBind(() => Localisation.getTranslation("common_target_language"), false);
      __e7.nodes.addAll([__binding6,
          __html6.clone(true)]);
      __e10 = __e19.nodes[3].nodes[1].nodes[1].nodes[1];
      __t.listen(__e10.onChange, ($event) { selectedTaskTypeFilter = __e10.selectedIndex; });
      __t.oneWayBind(() => selectedTaskTypeFilter, (e) { if (__e10.selectedIndex != e) __e10.selectedIndex = e; }, false, false);
      __t.loopIterateAttr(__e10, () => taskTypeIndexes, ($list, $index, __t) {
        var key = $list[$index];
        var __e9;
        __e9 = __html7.clone(true);
        var __binding8 = __t.contentBind(() => taskTypes[key], false);
        __e9.nodes.add(__binding8);
        __t.oneWayBind(() => key.toString(), (e) { if (__e9.value != e) __e9.value = e; }, false, false);
      __t.addAll([new autogenerated.Text('\n                    '),
          __e9,
          new autogenerated.Text('\n                  ')]);
      });
      __e13 = __e19.nodes[3].nodes[1].nodes[3].nodes[1];
      __t.listen(__e13.onChange, ($event) { selectedSourceFilter = __e13.selectedIndex; });
      __t.oneWayBind(() => selectedSourceFilter, (e) { if (__e13.selectedIndex != e) __e13.selectedIndex = e; }, false, false);
      __t.loopIterateAttr(__e13, () => activeLanguages, ($list, $index, __t) {
        var language = $list[$index];
        var __e12;
        __e12 = __html8.clone(true);
        var __binding11 = __t.contentBind(() => language.name, false);
        __e12.nodes.add(__binding11);
        __t.oneWayBind(() => language.code, (e) { if (__e12.value != e) __e12.value = e; }, false, false);
      __t.addAll([new autogenerated.Text('\n                      '),
          __e12,
          new autogenerated.Text('\n                  ')]);
      });
      __e16 = __e19.nodes[3].nodes[1].nodes[5].nodes[1];
      __t.listen(__e16.onChange, ($event) { selectedTargetFilter = __e16.selectedIndex; });
      __t.oneWayBind(() => selectedTargetFilter, (e) { if (__e16.selectedIndex != e) __e16.selectedIndex = e; }, false, false);
      __t.loopIterateAttr(__e16, () => activeLanguages, ($list, $index, __t) {
        var language = $list[$index];
        var __e15;
        __e15 = __html9.clone(true);
        var __binding14 = __t.contentBind(() => language.name, false);
        __e15.nodes.add(__binding14);
        __t.oneWayBind(() => language.code, (e) { if (__e15.value != e) __e15.value = e; }, false, false);
      __t.addAll([new autogenerated.Text('\n                    '),
          __e15,
          new autogenerated.Text('\n                  ')]);
      });
      __e18 = __e19.nodes[3].nodes[3].nodes[1].nodes[1];
      var __binding17 = __t.contentBind(() => Localisation.getTranslation("index_filter_task_stream"), false);
      __e18.nodes.addAll([new autogenerated.Text('\n                    '),
          __html10.clone(true),
          new autogenerated.Text(' '),
          __binding17,
          new autogenerated.Text('\n                  ')]);
      __t.listen(__e18.onClick, ($event) { filterStream(); });
      __e22 = __html11.clone(true);
      var __binding20 = __t.contentBind(() => Localisation.getTranslation("index_2"), false);
      var __binding21 = __t.contentBind(() => Localisation.getTranslation("index_3"), false);
      __e22.nodes.addAll([new autogenerated.Text('\n            '),
          __html12.clone(true),
          __binding20,
          new autogenerated.Text('\n            '),
          __binding21,
          new autogenerated.Text('\n          ')]);
    __t.addAll([new autogenerated.Text('\n          '),
        __e1,
        new autogenerated.Text('\n          '),
        __e19,
        new autogenerated.Text('\n          '),
        __html1.clone(true),
        new autogenerated.Text('\n          '),
        __e22,
        new autogenerated.Text('\n          '),
        __html2.clone(true),
        new autogenerated.Text('\n        ')]);
    });

    __e82 = __root.nodes[3];
    __t.conditional(__e82, () => tasks.length > 0, (__t) {
      var __e78, __e81;
      __e78 = __html13.clone(true);
      __t.loop(__e78, () => tasks, ($list, $index, __t) {
        var task = $list[$index];
        var __e25, __e29, __e32, __e35, __e38, __e39, __e43, __e44, __e48, __e49, __e54, __e57, __e58, __e61, __e63, __e66, __e67, __e76, __e77;
        __e77 = __html14.clone(true);
        __e25 = __e77.nodes[1].nodes[1];
        var __binding24 = __t.contentBind(() => task.title, false);
        __e25.nodes.addAll([new autogenerated.Text('\n                  '),
            __binding24,
            new autogenerated.Text('\n                ')]);
        __t.bind(() => [new Settings().conf.urls.SiteLocation, task.id],  (__e) { __e25.href = autogenerated.sanitizeUri('${__e.newValue[0]}task/${__e.newValue[1]}/id'); }, false);
        __e39 = __e77.nodes[3];
        var __binding26 = __t.contentBind(() => Localisation.getTranslation("common_type"), false);
        __e29 = __html15.clone(true);
        __t.conditional(__e29, () => task.taskType == 1, (__t) {
          var __e28;
          __e28 = __html16.clone(true);
          var __binding27 = __t.contentBind(() => Localisation.getTranslation("common_segmentation"), false);
          __e28.nodes.add(__binding27);
          __t.bind(() => taskOneColour,  (__e) { __e28.attributes['style'] = 'background-color: ${__e.newValue}'; }, false);
        __t.addAll([new autogenerated.Text('\n                  '),
            __e28,
            new autogenerated.Text('\n                ')]);
        });

        __e32 = __html17.clone(true);
        __t.conditional(__e32, () => task.taskType == 2, (__t) {
          var __e31;
          __e31 = __html18.clone(true);
          var __binding30 = __t.contentBind(() => Localisation.getTranslation("common_translation"), false);
          __e31.nodes.add(__binding30);
          __t.bind(() => taskTwoColour,  (__e) { __e31.attributes['style'] = 'background-color: ${__e.newValue}'; }, false);
        __t.addAll([new autogenerated.Text('\n                  '),
            __e31,
            new autogenerated.Text('\n                ')]);
        });

        __e35 = __html19.clone(true);
        __t.conditional(__e35, () => task.taskType == 3, (__t) {
          var __e34;
          __e34 = __html20.clone(true);
          var __binding33 = __t.contentBind(() => Localisation.getTranslation("common_proofreading"), false);
          __e34.nodes.add(__binding33);
          __t.bind(() => taskThreeColour,  (__e) { __e34.attributes['style'] = 'background-color: ${__e.newValue}'; }, false);
        __t.addAll([new autogenerated.Text('\n                  '),
            __e34,
            new autogenerated.Text('\n                ')]);
        });

        __e38 = __html21.clone(true);
        __t.conditional(__e38, () => task.taskType == 4, (__t) {
          var __e37;
          __e37 = __html22.clone(true);
          var __binding36 = __t.contentBind(() => Localisation.getTranslation("common_desegmentation"), false);
          __e37.nodes.add(__binding36);
          __t.bind(() => taskFourColour,  (__e) { __e37.attributes['style'] = 'background-color: ${__e.newValue}'; }, false);
        __t.addAll([new autogenerated.Text('\n                  '),
            __e37,
            new autogenerated.Text('              \n                ')]);
        });

        __e39.nodes.addAll([__binding26,
            new autogenerated.Text(':\n                '),
            __e29,
            new autogenerated.Text('\n                '),
            __e32,
            new autogenerated.Text('\n                '),
            __e35,
            new autogenerated.Text('\n                '),
            __e38,
            new autogenerated.Text('\n              ')]);
        __e44 = __e77.nodes[5];
        var __binding40 = __t.contentBind(() => Localisation.getTranslation("common_from"), false);
        __e43 = __html23.clone(true);
        var __binding41 = __t.contentBind(() => task.sourceLocale.languageName, false);
        var __binding42 = __t.contentBind(() => task.sourceLocale.countryName, false);
        __e43.nodes.addAll([__binding41,
            new autogenerated.Text(' - '),
            __binding42,
            new autogenerated.Text(' ')]);
        __e44.nodes.addAll([new autogenerated.Text('\n                '),
            __binding40,
            new autogenerated.Text(': '),
            __e43,
            new autogenerated.Text('\n              ')]);
        __e49 = __e77.nodes[7];
        var __binding45 = __t.contentBind(() => Localisation.getTranslation("common_to"), false);
        __e48 = __html24.clone(true);
        var __binding46 = __t.contentBind(() => task.targetLocale.languageName, false);
        var __binding47 = __t.contentBind(() => task.targetLocale.countryName, false);
        __e48.nodes.addAll([__binding46,
            new autogenerated.Text(' - '),
            __binding47]);
        __e49.nodes.addAll([new autogenerated.Text('\n                '),
            __binding45,
            new autogenerated.Text(': '),
            __e48,
            new autogenerated.Text('\n              ')]);
        __e54 = __e77.nodes[9].nodes[1];
        __t.conditional(__e54, () => taskTags[task.id].length > 0, (__t) {
          var __e53;
          __e53 = __html25.clone(true);
          __t.loop(__e53, () => taskTags[task.id], ($list, $index, __t) {
            var tag = $list[$index];
            var __e51, __e52;
            __e52 = __html26.clone(true);
            __e51 = __e52.nodes[0];
            var __binding50 = __t.contentBind(() => tag.label, false);
            __e51.nodes.add(__binding50);
            __t.bind(() => [siteAddress, tag.id],  (__e) { __e52.href = autogenerated.sanitizeUri('${__e.newValue[0]}tag/${__e.newValue[1]}'); }, false);
          __t.addAll([new autogenerated.Text('\n                    '),
              __e52,
              new autogenerated.Text('\n                  ')]);
          });
        __t.addAll([new autogenerated.Text('\n                  '),
            __e53,
            new autogenerated.Text('\n                ')]);
        });

        __e58 = __e77.nodes[11];
        var __binding55 = __t.contentBind(() => Localisation.getTranslation("common_word_count"), false);
        __e57 = __html27.clone(true);
        var __binding56 = __t.contentBind(() => task.wordCount, false);
        __e57.nodes.add(__binding56);
        __e58.nodes.addAll([new autogenerated.Text('\n                '),
            __binding55,
            new autogenerated.Text(': '),
            __e57,
            new autogenerated.Text('\n              ')]);
        __e63 = __e77.nodes[13];
        var __binding59 = __t.contentBind(() => Localisation.getTranslation("common_added"), false);
        __e61 = __html28.clone(true);
        var __binding60 = __t.contentBind(() => taskAges[task.id], false);
        __e61.nodes.add(__binding60);
        var __binding62 = __t.contentBind(() => Localisation.getTranslation("common_ago"), false);
        __e63.nodes.addAll([new autogenerated.Text('\n                '),
            __binding59,
            new autogenerated.Text(': '),
            __e61,
            new autogenerated.Text(' '),
            __binding62,
            new autogenerated.Text('\n              ')]);
        __e67 = __e77.nodes[15];
        var __binding64 = __t.contentBind(() => Localisation.getTranslation("common_due_by"), false);
        __e66 = __html29.clone(true);
        var __binding65 = __t.contentBind(() => task.deadline, false);
        __e66.nodes.add(__binding65);
        __e67.nodes.addAll([new autogenerated.Text('\n                '),
            __binding64,
            new autogenerated.Text(': '),
            __e66,
            new autogenerated.Text('\n              ')]);
        __e76 = __e77.nodes[17];
        __t.conditional(__e76, () => projectMap[task.projectId] != null, (__t) {
          var __e75;
          __e75 = __html30.clone(true);
          __t.conditional(__e75, () => orgMap[projectMap[task.projectId].organisationId] != null, (__t) {
            var __e70, __e73, __e74;
            __e74 = __html31.clone(true);
            var __binding68 = __t.contentBind(() => Localisation.getTranslation("common_part_of"), false);
            __e70 = __html32.clone(true);
            var __binding69 = __t.contentBind(() => projectMap[task.projectId].title, false);
            __e70.nodes.addAll([new autogenerated.Text('\n                      '),
                __binding69,
                new autogenerated.Text('\n                    ')]);
            __t.bind(() => [siteAddress, projectMap[task.projectId].id],  (__e) { __e70.href = autogenerated.sanitizeUri('${__e.newValue[0]}project/${__e.newValue[1]}/view'); }, false);
            var __binding71 = __t.contentBind(() => Localisation.getTranslation("common_for"), false);
            __e73 = __html33.clone(true);
            var __binding72 = __t.contentBind(() => orgMap[projectMap[task.projectId].organisationId].name, false);
            __e73.nodes.addAll([new autogenerated.Text('\n                      '),
                __binding72,
                new autogenerated.Text('\n                    ')]);
            __t.bind(() => [siteAddress, orgMap[projectMap[task.projectId].organisationId].id],  (__e) { __e73.href = autogenerated.sanitizeUri('${__e.newValue[0]}org/${__e.newValue[1]}/profile'); }, false);
            __e74.nodes.addAll([new autogenerated.Text('\n                    '),
                __binding68,
                new autogenerated.Text(':\n                    '),
                __e70,
                new autogenerated.Text('\n                    '),
                __binding71,
                new autogenerated.Text('\n                    '),
                __e73,
                new autogenerated.Text('\n                  ')]);
          __t.addAll([new autogenerated.Text('\n                  '),
              __e74,
              new autogenerated.Text('\n                ')]);
          });

        __t.addAll([new autogenerated.Text('\n                '),
            __e75,
            new autogenerated.Text('\n              ')]);
        });

      __t.addAll([new autogenerated.Text('\n            '),
          __e77,
          new autogenerated.Text('\n          ')]);
      });
      __e81 = __html34.clone(true);
      __t.conditional(__e81, () => moreTasks, (__t) {
        var __e80;
        __e80 = __html35.clone(true);
        var __binding79 = __t.contentBind(() => Localisation.getTranslation("index_load_more"), false);
        __e80.nodes.add(__binding79);
        __t.listen(__e80.onClick, ($event) { addTasks(); });
      __t.addAll([new autogenerated.Text('\n            '),
          __e80,
          new autogenerated.Text('\n          ')]);
      });

    __t.addAll([new autogenerated.Text('\n          '),
        __e78,
        new autogenerated.Text('\n          '),
        __e81,
        new autogenerated.Text('\n        ')]);
    });

    __e85 = __root.nodes[5];
    __t.conditional(__e85, () => !(tasks.length > 0), (__t) {
      var __e84;
      __e84 = __html36.clone(true);
      var __binding83 = __t.contentBind(() => Localisation.getTranslation("index_no_tasks_available"), false);
      __e84.nodes.add(__binding83);
    __t.addAll([new autogenerated.Text('\n          '),
        __e84,
        new autogenerated.Text('\n        ')]);
    });

    __t.create();
  }

  void inserted_autogenerated() {
    __t.insert();
  }

  void removed_autogenerated() {
    __t.remove();
    __t = __e23 = __e82 = __e85 = null;
  }

  /** Original code from the component. */

  static const int limit = 10;
  
  String siteAddress;
  int taskCount = 0;
  String filter = '';
  int userId = 0;
  int selectedTaskTypeFilter = 0;
  int selectedSourceFilter = 0;
  int selectedTargetFilter = 0;
  DateTime currentDateTime;
  String __$taskOneColour;
  String get taskOneColour {
    if (__observe.observeReads) {
      __observe.notifyRead(this, __observe.ChangeRecord.FIELD, 'taskOneColour');
    }
    return __$taskOneColour;
  }
  set taskOneColour(String value) {
    if (__observe.hasObservers(this)) {
      __observe.notifyChange(this, __observe.ChangeRecord.FIELD, 'taskOneColour',
          __$taskOneColour, value);
    }
    __$taskOneColour = value;
  }
  String __$taskTwoColour;
  String get taskTwoColour {
    if (__observe.observeReads) {
      __observe.notifyRead(this, __observe.ChangeRecord.FIELD, 'taskTwoColour');
    }
    return __$taskTwoColour;
  }
  set taskTwoColour(String value) {
    if (__observe.hasObservers(this)) {
      __observe.notifyChange(this, __observe.ChangeRecord.FIELD, 'taskTwoColour',
          __$taskTwoColour, value);
    }
    __$taskTwoColour = value;
  }
  String __$taskThreeColour;
  String get taskThreeColour {
    if (__observe.observeReads) {
      __observe.notifyRead(this, __observe.ChangeRecord.FIELD, 'taskThreeColour');
    }
    return __$taskThreeColour;
  }
  set taskThreeColour(String value) {
    if (__observe.hasObservers(this)) {
      __observe.notifyChange(this, __observe.ChangeRecord.FIELD, 'taskThreeColour',
          __$taskThreeColour, value);
    }
    __$taskThreeColour = value;
  }
  String __$taskFourColour;
  String get taskFourColour {
    if (__observe.observeReads) {
      __observe.notifyRead(this, __observe.ChangeRecord.FIELD, 'taskFourColour');
    }
    return __$taskFourColour;
  }
  set taskFourColour(String value) {
    if (__observe.hasObservers(this)) {
      __observe.notifyChange(this, __observe.ChangeRecord.FIELD, 'taskFourColour',
          __$taskFourColour, value);
    }
    __$taskFourColour = value;
  }
  bool __$moreTasks = true;
  bool get moreTasks {
    if (__observe.observeReads) {
      __observe.notifyRead(this, __observe.ChangeRecord.FIELD, 'moreTasks');
    }
    return __$moreTasks;
  }
  set moreTasks(bool value) {
    if (__observe.hasObservers(this)) {
      __observe.notifyChange(this, __observe.ChangeRecord.FIELD, 'moreTasks',
          __$moreTasks, value);
    }
    __$moreTasks = value;
  }
  List<Task> __$tasks;
  List<Task> get tasks {
    if (__observe.observeReads) {
      __observe.notifyRead(this, __observe.ChangeRecord.FIELD, 'tasks');
    }
    return __$tasks;
  }
  set tasks(List<Task> value) {
    if (__observe.hasObservers(this)) {
      __observe.notifyChange(this, __observe.ChangeRecord.FIELD, 'tasks',
          __$tasks, value);
    }
    __$tasks = value;
  }
  Map<int, String> __$taskAges;
  Map<int, String> get taskAges {
    if (__observe.observeReads) {
      __observe.notifyRead(this, __observe.ChangeRecord.FIELD, 'taskAges');
    }
    return __$taskAges;
  }
  set taskAges(Map<int, String> value) {
    if (__observe.hasObservers(this)) {
      __observe.notifyChange(this, __observe.ChangeRecord.FIELD, 'taskAges',
          __$taskAges, value);
    }
    __$taskAges = value;
  }
  Map<int, Project> __$projectMap;
  Map<int, Project> get projectMap {
    if (__observe.observeReads) {
      __observe.notifyRead(this, __observe.ChangeRecord.FIELD, 'projectMap');
    }
    return __$projectMap;
  }
  set projectMap(Map<int, Project> value) {
    if (__observe.hasObservers(this)) {
      __observe.notifyChange(this, __observe.ChangeRecord.FIELD, 'projectMap',
          __$projectMap, value);
    }
    __$projectMap = value;
  }
  Map<int, Organisation> __$orgMap;
  Map<int, Organisation> get orgMap {
    if (__observe.observeReads) {
      __observe.notifyRead(this, __observe.ChangeRecord.FIELD, 'orgMap');
    }
    return __$orgMap;
  }
  set orgMap(Map<int, Organisation> value) {
    if (__observe.hasObservers(this)) {
      __observe.notifyChange(this, __observe.ChangeRecord.FIELD, 'orgMap',
          __$orgMap, value);
    }
    __$orgMap = value;
  }
  List<Language> __$activeLanguages;
  List<Language> get activeLanguages {
    if (__observe.observeReads) {
      __observe.notifyRead(this, __observe.ChangeRecord.FIELD, 'activeLanguages');
    }
    return __$activeLanguages;
  }
  set activeLanguages(List<Language> value) {
    if (__observe.hasObservers(this)) {
      __observe.notifyChange(this, __observe.ChangeRecord.FIELD, 'activeLanguages',
          __$activeLanguages, value);
    }
    __$activeLanguages = value;
  }
  Map<int, String> __$taskTypes;
  Map<int, String> get taskTypes {
    if (__observe.observeReads) {
      __observe.notifyRead(this, __observe.ChangeRecord.FIELD, 'taskTypes');
    }
    return __$taskTypes;
  }
  set taskTypes(Map<int, String> value) {
    if (__observe.hasObservers(this)) {
      __observe.notifyChange(this, __observe.ChangeRecord.FIELD, 'taskTypes',
          __$taskTypes, value);
    }
    __$taskTypes = value;
  }
  List<int> __$taskTypeIndexes;
  List<int> get taskTypeIndexes {
    if (__observe.observeReads) {
      __observe.notifyRead(this, __observe.ChangeRecord.FIELD, 'taskTypeIndexes');
    }
    return __$taskTypeIndexes;
  }
  set taskTypeIndexes(List<int> value) {
    if (__observe.hasObservers(this)) {
      __observe.notifyChange(this, __observe.ChangeRecord.FIELD, 'taskTypeIndexes',
          __$taskTypeIndexes, value);
    }
    __$taskTypeIndexes = value;
  }
  Map<int, List<Tag>> __$taskTags;
  Map<int, List<Tag>> get taskTags {
    if (__observe.observeReads) {
      __observe.notifyRead(this, __observe.ChangeRecord.FIELD, 'taskTags');
    }
    return __$taskTags;
  }
  set taskTags(Map<int, List<Tag>> value) {
    if (__observe.hasObservers(this)) {
      __observe.notifyChange(this, __observe.ChangeRecord.FIELD, 'taskTags',
          __$taskTags, value);
    }
    __$taskTags = value;
  }
  
  TaskStream()
  {
    Settings settings = new Settings();
    siteAddress = settings.conf.urls.SiteLocation;
    currentDateTime = new DateTime.now();
    tasks = toObservable(new List<Task>());
    taskAges = toObservable(new Map<int, String>());
    projectMap = toObservable(new Map<int, Project>());    
    orgMap = toObservable(new Map<int, Organisation>());
    activeLanguages = toObservable(new List<Language>());
    taskTypes = toObservable(new Map<int, String>());
    taskTypeIndexes = toObservable(new List<int>());
    taskTags = toObservable(new Map<int, List<Tag>>());
  }
  
  void inserted()
  {
    Settings settings = new Settings();
    settings.loadConf().then((e) {
      loadActiveLanguages();
      addTasks();
      taskTypeIndexes.add(0);
      taskTypes[0] = Localisation.getTranslation("index_any");
      taskTypeIndexes.add(1);
      taskTypes[1] = Localisation.getTranslation("common_segmentation");
      taskOneColour = settings.conf.task_colours.colour_1;
      taskTypeIndexes.add(2);
      taskTypes[2] = Localisation.getTranslation("common_translation");
      taskTwoColour = settings.conf.task_colours.colour_2;
      taskTypeIndexes.add(3);
      taskTypes[3] = Localisation.getTranslation("common_proofreading");
      taskThreeColour = settings.conf.task_colours.colour_3;
      taskTypeIndexes.add(4);
      taskTypes[4] = Localisation.getTranslation("common_desegmentation");
      taskFourColour = settings.conf.task_colours.colour_4;
    });
  }
  
  void loadActiveLanguages()
  {
    Language any = new Language();
    any.name = Localisation.getTranslation("index_any");
    any.code = "";
    activeLanguages.add(any);
    LanguageDao.getActiveLanguages().then((List<Language> langs) {
      langs.forEach((Language lang) {
        activeLanguages.add(lang);
      });
    });
  }
  
  void addTasks()
  {
    int offset = taskCount;
    if (userId > 0) {
      TaskDao.getUserTopTasks(userId, offset, limit, filter)
              .then((List<Task> userTasks) => processTaskList(userTasks));
    } else {
      TaskDao.getLatestAvailableTasks(offset, limit)
              .then((List<Task> tasks) => processTaskList(tasks));
    }
  }
  
  void processTaskList(List<Task> tasks)
  {
    if (tasks.length > 0) {
      if (tasks.length < limit) {
        moreTasks = false;
      }
      if (tasks.length > 0) {
        tasks.forEach((Task task) {
          addTask(task);
        });
      }
    } else {
      moreTasks = false;
    }
  }
  
  void addTask(Task task)
  {
    tasks.add(task);
    DateTime taskTime = DateTime.parse(task.createdTime);
    Duration dur = currentDateTime.difference(taskTime);
    if (dur.inDays > 0) {
      taskAges[task.id] = dur.inDays.toString() + " day(s)";
    } else if (dur.inHours > 0) {
      taskAges[task.id] = dur.inHours.toString() + " hour(s)";
    } else if (dur.inMinutes > 0) {
      taskAges[task.id] = dur.inMinutes.toString() + " minutes(s)";
    } else {
      taskAges[task.id] = dur.inSeconds.toString() + " second(s)";
    }
    taskTags[task.id] = new List<Tag>();
    TaskDao.getTaskTags(task.id).then((List<Tag> tags) {
      taskTags[task.id] = tags;
    });
    taskCount++;
    if (!projectMap.containsKey(task.projectId)) {
      ProjectDao.getProject(task.projectId).then((Project proj) {
        projectMap[proj.id] = proj;
        OrgDao.getOrg(proj.organisationId).then((Organisation org) {
          orgMap[org.id] = org;
        });
      });
    }
  }
  
  void filterStream()
  {
    filter = "";
    if (selectedTaskTypeFilter > 0) {
      filter += "taskType:" + selectedTaskTypeFilter.toString() + ";";                
    }
    if (selectedSourceFilter > 0) {
      filter += "sourceLanguage:" + activeLanguages.elementAt(selectedSourceFilter).code + ";";
    }
    if (selectedTargetFilter > 0) {
      filter += "targetLanguage:" + activeLanguages.elementAt(selectedTargetFilter).code + ";";
    }
    tasks.clear();
    taskCount = 0;
    moreTasks = true;
    TaskDao.getUserTopTasks(userId, taskCount, limit, filter)
            .then((List<Task> userTasks) => processTaskList(userTasks));
  }
}

//# sourceMappingURL=TaskStream.dart.map