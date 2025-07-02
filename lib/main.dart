import 'package:codelab_tj/app.dart';
import 'package:codelab_tj/core/di/di.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
  await dotenv.load();

  configureDependencies();
  runApp(const App());
}
