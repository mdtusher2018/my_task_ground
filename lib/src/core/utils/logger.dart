import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';

/// ==========================================================
/// APPLICATION LOGGER
/// ==========================================================
/// 
/// Centralized logging utility.
/// 
/// - Disabled in release mode
/// - Pretty formatted output in debug mode
/// - Supports optional tagging
class AppLogger {
  AppLogger._(); // Prevent instantiation

  /// Internal logger instance
  static final Logger _logger = Logger(
    printer: PrettyPrinter(
      methodCount: 2,
      errorMethodCount: 5,
      lineLength: 80,
      colors: true,
      printEmojis: true,
      printTime: true,
    ),
    level: kReleaseMode ? Level.nothing : Level.debug,
  );

  /// Formats message with optional tag.
  /// Example:
  /// [Auth] Login failed
  static String _format(String message, String? tag) {
    if (tag != null) return '[$tag] $message';
    return message;
  }

  /// Debug log
  static void log(String message, {String? tag}) {
    _logger.d(_format(message, tag));
  }

  /// Error log
  /// 
  /// Supports:
  /// - Custom error object
  /// - Stack trace
  /// - Optional tag
  static void error(
    String message, {
    Object? error,
    StackTrace? stackTrace,
    String? tag,
  }) {
    _logger.e(
      _format(message, tag),
      error: error,
      stackTrace: stackTrace,
    );
  }
}