library SolasMatchDart;

import 'dart:html' as autogenerated;
import 'dart:svg' as autogenerated_svg;
import 'package:web_ui/watcher.dart' as watcher;
import 'package:web_ui/web_ui.dart' as autogenerated;
import 'package:web_ui/observe/observable.dart' as __observe;
import '../../compiled/components/TaskStream.dart';
import 'dart:html';
import "package:web_ui/web_ui.dart";
import "../../lib/Settings.dart";


void main()
{
  watcher.useObservers = true;
  print("Initialising settings");
  Settings settings = new Settings();
  settings.loadConf().then((bool loaded) {
    print("Settings Loaded");
    if (loaded) {
      print("Successfully loaded conf file");
    } else {
      print("Failed to load conf file");
    }
    init_autogenerated();
  });
}

void init_autogenerated() {
  print("Initialising autogenerated");
  var __root = autogenerated.document.body;
  var __e0;
  var __t = new autogenerated.Template(__root);
  __e0 = query("#taskStream");
  __t.oneWayBind(() => int.parse(__e0.xtag.attributes['user-id']), 
      (e) { if (__e0.xtag.userId != e) __e0.xtag.userId = e; }, false, false);
  __t.component(new TaskStream()..host = __e0);
  __t.create();
  __t.insert();
}
