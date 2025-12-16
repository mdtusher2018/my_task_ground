import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';

class AppLogger {
  // Singleton instance
  static final Logger _logger = Logger(
    printer: PrettyPrinter(
      methodCount: 2, // show method calls in stack trace
      errorMethodCount: 5,
      lineLength: 80,
      colors: true, // enable colors in console
      printEmojis: true,
      printTime: true, // include timestamp
    ),
    level: kReleaseMode ? Level.nothing : Level.debug, // hide logs in release
  );

  static String _format(String message, String? tag) {
    if (tag != null) return '[$tag] $message';
    return message;
  }

  static void log(String message, {String? tag}) =>
      _logger.d(_format(message, tag));

  static void error(
    String message, {
    Object? error,
    StackTrace? stackTrace,
    String? tag,
  }) => _logger.e(_format('❌ $message', tag));
}
