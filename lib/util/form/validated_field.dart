// coverage:ignore-file
//* File ignored for test coverage since it is only an interface

import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

import 'validation_failure.dart';

///Represents a piece of data that has its own built-in validation.
///
///This should be used for data that users would interact with that needs validation
@immutable
abstract class ValidatedField<T> {
  ///Default constructor
  const ValidatedField();

  ///The [Either] value of the [ValidatedField] that can either contain a [ValidationFailure] or the data that represents itself
  Either<ValidationFailure<T>, T> get value;

  /// Gets the value of a [ValidatedField] if valid, otherwise returns [defaultValue]
  T getOrElse(T defaultValue) {
    return value.fold((_) => defaultValue, id);
  }

  ///Returns the value entered this may be unvalidated
  T get unvalidatedValue => value.fold((l) => l.failedValue, (r) => r);

  /// Gives the error key for a [ValidationFailure].
  String? get validationMessage => value.fold((failure) => failure.validationMessage, (_) => null);

  /// Used to see if an [Either] has a [ValidationFailure], ignoring whatever is the value on the [right]
  Either<ValidationFailure<dynamic>, Unit> get failureOrUnit {
    return value.fold((l) => left(l), (r) => right(unit));
  }

  /// Tells whether the [ValidatedField]'s value is not a failure.
  bool isValid() => value.isRight();

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    return other is ValidatedField<T> && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => unvalidatedValue != null ? unvalidatedValue.toString() : '';
}
