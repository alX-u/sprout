import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';
import 'package:sprout/core/config/env/environment.dart';
import 'package:sprout/core/config/logger/logger_config.dart';

class AppLogger {
  AppLogger._();

  static final Logger _logger = LoggerConfig.instance;

  /// Log de depuración - Solo en modo debug
  static void debug(
    dynamic message, {
    Object? error,
    StackTrace? stackTrace,
  }) {
    if (kDebugMode || Environment.isDev) {
      _logger.d(message, error: error, stackTrace: stackTrace);
    }
  }

  /// Log informativo
  static void info(
    dynamic message, {
    Object? error,
    StackTrace? stackTrace,
  }) {
    _logger.i(message, error: error, stackTrace: stackTrace);
  }

  /// Log de advertencia
  static void warning(
    dynamic message, {
    Object? error,
    StackTrace? stackTrace,
  }) {
    _logger.w(message, error: error, stackTrace: stackTrace);
  }

  /// Log de error
  static void error(
    dynamic message, {
    Object? error,
    StackTrace? stackTrace,
  }) {
    _logger.e(message, error: error, stackTrace: stackTrace);
  }

  /// Log de error fatal - Captura automáticamente el stack trace
  static void fatal(
    dynamic message, {
    Object? error,
  }) {
    _logger.f(
      message,
      error: error,
      stackTrace: error != null ? StackTrace.current : null,
    );
  }

  /// Log para APIs - Peticiones HTTP
  static void api(String method, String url, {int? statusCode, dynamic data}) {
    final message = StringBuffer();
    message.write('$method $url');
    if (statusCode != null) {
      message.write(' [$statusCode]');
    }

    if (kDebugMode) {
      if (data != null) {
        message.write('\nData: $data');
      }
      _logger.d(message.toString());
    }
  }

  /// Log para navegación
  static void navigation(String from, String to) {
    if (kDebugMode) {
      _logger.i('🧭 Navigation: $from → $to');
    }
  }

  /// Log para eventos del ciclo de vida
  static void lifecycle(String widget, String event) {
    if (kDebugMode) {
      _logger.d('🔄 Lifecycle: $widget - $event');
    }
  }

  /// Log para caché
  static void cache(String action, String key, {dynamic value}) {
    if (kDebugMode) {
      final message = '💾 Cache $action: $key';
      _logger.d(value != null ? '$message = $value' : message);
    }
  }

  /// Log para autenticación
  static void auth(String message) {
    _logger.i('🔐 Auth: $message');
  }

  /// Log para base de datos
  static void database(String operation, {String? table, dynamic data}) {
    if (kDebugMode) {
      final message = StringBuffer('🗄️ DB $operation');
      if (table != null) message.write(' on $table');
      if (data != null) message.write(': $data');
      _logger.d(message.toString());
    }
  }
}
