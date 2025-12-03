import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:sprout/core/config/env/base_config.dart';
import 'package:sprout/core/config/env/config.dart';
import 'package:sprout/core/config/env/env_validator.dart';
import 'package:sprout/core/config/logger/app_logger.dart'; // ← AGREGAR
import 'package:sprout/core/design/tokens/gen/assets.gen.dart';
import 'package:sprout/core/types/environment_types.dart';

class Environment {
  factory Environment() => _instance;

  Environment._internal();
  static final Environment _instance = Environment._internal();

  static late BaseConfig config;
  static late EnvironmentTypes currentEnv;

  Future<void> initConfig({required EnvironmentTypes env}) async {
    currentEnv = env;
    config = await _getConfig(env);
  }

  Future<BaseConfig> _getConfig(EnvironmentTypes environment) async {
    try {
      switch (environment) {
        case EnvironmentTypes.dev:
          await dotenv.load(fileName: AssetsToken.envs.aEnvDev);
          break;
        case EnvironmentTypes.prod:
          await dotenv.load(fileName: AssetsToken.envs.aEnvProd);
          break;
      }

      EnvValidator.validate();

      final config = Config();

      // Usar el nuevo logger
      _logEnvironmentInfo(environment, config);

      return config;
    } catch (e) {
      AppLogger.fatal('Failed to initialize environment', error: e);
      throw Exception('Failed to initialize environment: $e');
    }
  }

  void _logEnvironmentInfo(EnvironmentTypes env, BaseConfig config) {
    final envName = env.name.toUpperCase();
    final apiUrl = config.perenualApiBaseUrl.speciesList;
    final maskedKey = _maskApiKey(config.perenualApiKey);

    AppLogger.info('Environment initialized: $envName');
    AppLogger.debug('API Base URL: $apiUrl');
    AppLogger.debug('API Key: $maskedKey');
  }

  String _maskApiKey(String key) {
    if (key.length <= 8) return '****';
    return '${key.substring(0, 4)}...${key.substring(key.length - 4)}';
  }

  static bool get isDev => currentEnv == EnvironmentTypes.dev;
  static bool get isProd => currentEnv == EnvironmentTypes.prod;
}
