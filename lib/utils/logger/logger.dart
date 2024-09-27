import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';

class AppLogger {
  static final logger = Logger(
    printer: PrettyPrinter(
      methodCount: 15, // number of method calls to be displayed
      errorMethodCount: 15, // number of method calls if stacktrace is provided
      lineLength: 1000, // width of the output
      colors: true, // Colorful log messages
      printEmojis: true, // Print an emoji for each log message
      // printTime: false,
      // Should each log print contain a timestamp
    ),
  );

  static void i(dynamic message) {
    if (kDebugMode) {
      logger.i(message);
    } else {
      return;
    }
  }

  static void fatal(dynamic message, StackTrace? trace) {
    if (kDebugMode) {
      logger.f(message, stackTrace: trace);
    } else {
      return;
    }
  }

  static void trace(dynamic message, StackTrace? trace) {
    if (kDebugMode) {
      logger.t(message, stackTrace: trace);
    } else {
      return;
    }
  }

  static void d(dynamic message) {
    if (kDebugMode) {
      logger.d(message);
    } else {
      return;
    }
  }

  static void w(dynamic message) {
    if (kDebugMode) {
      logger.w(message);
    } else {
      return;
    }
  }

  static void e(dynamic message) {
    if (kDebugMode) {
      logger.e(message);
    } else {
      return;
    }
  }

  static void wtf(dynamic message) {
    if (kDebugMode) {
      logger.t(message);
    } else {
      return;
    }
  }

  static void multi(dynamic message) {
    if (kDebugMode) {
      logger.f(message);
    } else {
      return;
    }
  }

  static void request(dynamic message) {
    if (kDebugMode) {
      kDebugMode
          ? print(
              "===============================================REQUEST=========================================")
          : null;
      logger.log(Level.info, message);
      kDebugMode
          ? print(
              "===============================================REQUEST=========================================")
          : null;
    } else {
      return;
    }
  }

  static void response(dynamic message) {
    kDebugMode
        ? print(
            "===============================================RESPONSE=========================================")
        : null;
    logger.log(Level.debug, message);
    kDebugMode
        ? print(
            "===============================================RESPONSE=========================================")
        : null;
  }
}
