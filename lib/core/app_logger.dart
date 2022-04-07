import 'package:logger/logger.dart';

class AppLogger {
  AppLogger._();
  static final Logger _logger = Logger(
    output: _CustomConsoleOutput(),
    printer: PrettyPrinter(
      // Do not print call stack for verbose, debug and info
      methodCount: 0,
      errorMethodCount: 10,
    ),
  );

  /// Log a object at level [Level.verbose].
  static void v(dynamic object, {String? message, StackTrace? stackTrace}) {
    _logger.v(object, message, stackTrace);
  }

  /// Log a object at level [Level.debug].
  static void d(dynamic object, {String? message, StackTrace? stackTrace}) {
    _logger.d(object, message, stackTrace);
  }

  /// Log a object at level [Level.info].
  static void i(dynamic object, {String? message, StackTrace? stackTrace}) {
    _logger.i(object, message, stackTrace);
  }

  /// Log a object at level [Level.warning].
  static void w(dynamic object, {String? message, StackTrace? stackTrace}) {
    _logger.w(object, message, stackTrace ?? StackTrace.current);
  }

  /// Log a object at level [Level.error].
  static void e(dynamic object, {String? message, StackTrace? stackTrace}) {
    _logger.e(object, message, stackTrace ?? StackTrace.current);
  }

  /// Log a object at level [Level.wtf].
  static void wtf(dynamic object, {String? message, StackTrace? stackTrace}) {
    _logger.wtf(object, message, stackTrace ?? StackTrace.current);
  }
}

/// Custom [LogOutput] to prevent long strings from being
/// truncated in the console.
class _CustomConsoleOutput extends LogOutput {
  @override
  void output(OutputEvent event) {
    event.lines.forEach(printWrapped);
  }

  void printWrapped(String text) {
    // 800 is the size of each chunk
    final pattern = RegExp('.{1,800}');
    pattern.allMatches(text).forEach((match) => print(match.group(0)));
  }
}
