import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:sprout/core/config/logger/app_logger.dart';

class EnvValidator {
  static void validate() {
    final requiredVars = [
      'ENVIRONMENT',
      'PERENUAL_API_BASE_URL',
      'PERENUAL_USER_CREDENTIAL_KEY',
    ];

    final missing = <String>[];

    for (final varName in requiredVars) {
      final value = dotenv.env[varName];
      if (value == null || value.isEmpty) {
        missing.add(varName);
      }
    }

    if (missing.isNotEmpty) {
      final errorMessage = 'Missing required environment variables:\n'
          '${missing.map((e) => '  - $e').join('\n')}\n'
          'Please check your .env file.';

      AppLogger.fatal(errorMessage);
      throw Exception(errorMessage);
    }

    AppLogger.debug('✅ All environment variables validated');
  }
}
