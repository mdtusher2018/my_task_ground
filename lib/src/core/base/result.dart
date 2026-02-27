/// A functional-style wrapper that represents either:
/// - a successful value [Success]
/// - or a failure value [FailureResult]
///
/// T → Success data type  
/// E → Error type
abstract class Result<T, E> {
  const Result();
}

/// Represents a successful operation result.
///
/// Contains the returned [data].
class Success<T, E> extends Result<T, E> {
  final T data;

  const Success(this.data);
}

/// Represents a failed operation result.
///
/// Contains the [error] information.
class FailureResult<T, E> extends Result<T, E> {
  final E error;

  const FailureResult(this.error);
}