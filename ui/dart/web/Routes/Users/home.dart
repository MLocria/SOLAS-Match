library app_bootstrap;

import 'package:polymer/polymer.dart';
import "../../lib/Loader.dart";

import 'TaskStream.dart' as i0;

void main() {
  configureForDeployment([
      'TaskStream.dart',
      ]);
  Loader.load().then((_) => initPolymer());
}