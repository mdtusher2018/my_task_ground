

import 'package:scube_task/src/core/base/failure.dart';
import 'package:scube_task/src/core/base/result.dart';
import 'package:scube_task/src/core/utils/logger.dart';

abstract base class Repository<T> {
  // ignore: avoid_shadowing_type_parameters
  Future<Result<T, Failure>> asyncGuard<T>(
    Future<T> Function() operation,
  ) async {
    try {
      final result = await operation();
      return Success(result);
    } on Exception catch (e, stackTrace) {
      AppLogger.error(e.toString());
      AppLogger.error(stackTrace.toString());

      return FailureResult(Failure.mapExceptionToFailure(e));
    }
  }

  Result<T, Failure> guard(T Function() operation) {
    try {
      final result = operation();
      return Success(result);
    } on Exception catch (e) {
      return FailureResult(Failure.mapExceptionToFailure(e));
    }
  }
}
