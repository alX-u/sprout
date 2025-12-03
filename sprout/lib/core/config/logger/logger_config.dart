import 'package:logger/logger.dart';
import 'package:sprout/core/config/env/environment.dart';

/// Configuration class for the application's logging system.
///
/// This class provides a centralized logger instance with customized settings
/// that adapt based on the current environment (development or production).
///
/// Usage:
/// ```dart
/// final logger = LoggerConfig.instance;
/// logger.d('Debug message');
/// logger.i('Info message');
/// logger.w('Warning message');
/// logger.e('Error message');
/// ```
class LoggerConfig {
  /// Returns the singleton instance of the configured logger.
  static Logger get instance => _logger;

  /// Private logger instance with custom printer and level configuration.
  ///
  /// The logger uses [PrettyPrinter] for enhanced readability with:
  /// - Stack traces for debugging
  /// - Color-coded output
  /// - Emojis for quick visual identification
  /// - Timestamps for each log entry
  static final Logger _logger = Logger(
    printer: PrettyPrinter(
      /// Number of stack trace method calls to display for normal logs.
      /// Shows the call chain to help identify where the log originated.
      methodCount: 2,

      /// Number of stack trace method calls to display for error logs.
      /// Errors get more detailed traces to aid in debugging.
      errorMethodCount: 8,

      /// Maximum character width for each log line before wrapping.
      lineLength: 120,

      /// Enables colored output in the console for better visual distinction
      /// between log levels (debug, info, warning, error).
      colors: true,

      /// Enables emoji prefixes for each log level:
      /// 🐛 Debug, ℹ️ Info, ⚠️ Warning, ❌ Error, 💀 Fatal
      printEmojis: true,

      /// Format for timestamps in log entries.
      /// Shows both date and time for complete context.
      dateTimeFormat: DateTimeFormat.dateAndTime,
    ),

    /// Sets the minimum log level based on the current environment.
    /// See [_getLogLevel] for environment-specific configuration.
    level: _getLogLevel(),
  );

  /// Determines the minimum log level based on the application environment.
  ///
  /// Returns:
  /// - [Level.debug] in development: Shows all logs including debug messages
  /// - [Level.warning] in production: Only shows warnings, errors, and fatal logs
  ///
  /// This helps reduce noise in production while maintaining full visibility
  /// during development.
  static Level _getLogLevel() {
    if (Environment.isDev) {
      return Level.debug;
    }

    return Level.warning;
  }
}
