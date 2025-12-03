import 'package:flutter/material.dart';
import 'package:sprout/app/app.dart';
import 'package:sprout/core/config/env/environment.dart';
import 'package:sprout/core/types/environment_types.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Environment().initConfig(env: EnvironmentTypes.prod);
  runApp(const App());
}
