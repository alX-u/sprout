import 'package:flutter/material.dart';
import 'package:sprout/app/app.dart';
import 'package:sprout/core/config/env/environment.dart';
import 'package:sprout/core/types/environment_types.dart';

Future<void> main() async {
  //We configure the environment
  await Environment().initConfig(env: EnvironmentTypes.dev);
  //TODO: dependency injection initalization
  runApp(const App());
}
