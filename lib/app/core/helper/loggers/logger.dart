import 'package:logger/logger.dart';

abstract class ILogger {
  void debug(dynamic message, [dynamic error, StackTrace? stackTrace]);
  void info(dynamic message, [dynamic error, StackTrace? stackTrace]);
  void warnig(dynamic message, [dynamic error, StackTrace? stackTrace]);
  void error(dynamic message, [dynamic error, StackTrace? stackTrace]);
  void append(dynamic message);
  void closeAppend();
}

class NewsdLogger implements ILogger {
  List<String> messages = [];

  final logger = Logger();

  @override
  void debug(message, [error, StackTrace? stackTrace]) {
    logger.d(message, error, stackTrace);
  }

  @override
  void error(message, [error, StackTrace? stackTrace]) {
    logger.e(message, error, stackTrace);
  }

  @override
  void info(message, [error, StackTrace? stackTrace]) {
    logger.i(message, error, stackTrace);
  }

  @override
  void warnig(message, [error, StackTrace? stackTrace]) {
    logger.w(message, error, stackTrace);
  }

  @override
  void append(message) {
    messages.add(message);
  }

  @override
  void closeAppend() {
    info(messages.join('\n'));
    messages = [];
  }
}
