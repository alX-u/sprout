import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:sprout/core/config/env/base_config.dart';
import 'package:sprout/core/config/env/config.dart';
import 'package:sprout/core/design/tokens/gen/assets.gen.dart';
import 'package:sprout/core/types/environment_types.dart';

class Environment {
  factory Environment() => _instance;

  Environment._internal();
  static final Environment _instance = Environment._internal();

  static late BaseConfig config;

  Future<void> initConfig({required EnvironmentTypes env}) async {
    config = await _getConfig(env);
  }

  Future<BaseConfig> _getConfig(EnvironmentTypes environment) async {
    switch (environment) {
      case EnvironmentTypes.dev:
        await dotenv.load(fileName: AssetsToken.envs.aEnvDev);
        return Config();
      case EnvironmentTypes.prod:
        await dotenv.load(fileName: AssetsToken.envs.aEnvProd);
        return Config();
    }
  }
}
