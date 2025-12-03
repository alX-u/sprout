import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:sprout/core/config/api/perenual_api.dart';
import 'package:sprout/core/config/env/base_config.dart';

class Config extends BaseConfig {
  @override
  String get environment => dotenv.env['ENVIRONMENT'] ?? '';

  @override
  PerenualApi get perenualApiBaseUrl =>
      PerenualApi(baseUrl: dotenv.env['PERENUAL_API_BASE_URL'] ?? '');

  @override
  String get perenualApiKey {
    final key = dotenv.env['PERENUAL_USER_CREDENTIAL_KEY'];
    if (key == null || key.isEmpty) {
      throw Exception('PERENUAL_USER_CREDENTIAL_KEY not found in .env file');
    }
    return key;
  }
}
