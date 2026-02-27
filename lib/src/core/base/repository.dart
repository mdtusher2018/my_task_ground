// ignore_for_file: avoid_shadowing_type_parameters

import 'package:scube_task/src/core/base/failure.dart';
import 'package:scube_task/src/core/base/result.dart';
import 'package:scube_task/src/core/utils/logger.dart';

/// Base repository class that provides
/// centralized error handling for data operations.
///
/// All repositories should extend this class
/// to ensure consistent exception-to-Failure mapping.
abstract base class Repository<T> {

  /// Wraps an asynchronous operation in a try/catch block
  /// and converts the result into a [Result] type.
  ///
  /// - Returns [Success] if the operation completes successfully.
  /// - Returns [FailureResult] if an exception occurs.
  ///
  /// Automatically logs the error and stack trace.
  Future<Result<T, Failure>> asyncGuard<T>(
    Future<T> Function() operation,
  ) async {
    try {
      final result = await operation();
      return Success(result);
    } on Exception catch (e, stackTrace) {
      // Log error for debugging purposes
      AppLogger.error(e.toString());
      AppLogger.error(stackTrace.toString());

      // Convert exception into domain-level Failure
      return FailureResult(Failure.mapExceptionToFailure(e));
    }
  }

  /// Wraps a synchronous operation in a try/catch block
  /// and converts the result into a [Result] type.
  ///
  /// - Returns [Success] if execution succeeds.
  /// - Returns [FailureResult] if an exception occurs.
  Result<T, Failure> guard(T Function() operation) {
    try {
      final result = operation();
      return Success(result);
    } on Exception catch (e) {
      // Convert exception into domain-level Failure
      return FailureResult(Failure.mapExceptionToFailure(e));
    }
  }
}