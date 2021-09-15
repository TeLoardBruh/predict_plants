// ignore_for_file: avoid_print
// ignore_for_file: avoid_print
// ignore: avoid_web_libraries_in_flutter
import 'dart:io' as IO;
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import './web/main_web.dart';
import './mobile/main_mobile.dart';

void main() {
  if (kIsWeb) {
    runApp(MyAppWeb());
  } else {
    runApp(MyApp());
  }
}

