import 'dart:async';

extension ResultFuture<S, E extends Exception> on Future<Result<S, E>> {
  Future<S?> unwrapOrNull() async {
    final completed = await this;

    final S? result = switch (completed) {
      Success(value: final value) => value,
      Failure() => null,
    };

    return result;
  }

  Future<S> unwrapOr(S defaultValue) async {
    final completed = await this;

    final S result = switch (completed) {
      Success(value: final value) => value,
      Failure() => defaultValue,
    };

    return result;
  }
}

sealed class Result<S, E extends Exception> {
  const Result();

  S? unwrapOrNull() {
    final S? result = switch (this) {
      Success(value: final value) => value,
      Failure() => null,
    };

    return result;
  }

  S unwrapOr(S defaultValue) {
    final S result = switch (this) {
      Success(value: final value) => value,
      Failure() => defaultValue,
    };

    return result;
  }
}

final class Success<S, E extends Exception> extends Result<S, E> {
  final S value;
  const Success(this.value);
}

final class Failure<S, E extends Exception> extends Result<S, E> {
  final E exception;
  const Failure(this.exception);
}
