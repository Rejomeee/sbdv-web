import 'package:freezed_annotation/freezed_annotation.dart';

part 'validation_failure.freezed.dart';

@freezed

///Class that represents the failures for all ValueObjects in the app.
class ValidationFailure<T> with _$ValidationFailure<T> {
  //* Ignore private cosntructor and union cases since they're tested on validation field classes from test coverage
  // coverage:ignore-start
  const ValidationFailure._();

  ///Returns a [ValidationFailure] for having an empty input.
  ///
  ///Value can be corrected using [failedValue].
  const factory ValidationFailure.empty({
    required T failedValue,
    String? customValidationMessage,
  }) = _Empty<T>;

  ///Returns a [ValidationFailure] for not following a specified format.
  ///
  ///Value can be corrected using [failedValue].
  const factory ValidationFailure.invalidFormat({
    required T failedValue,
    String? customValidationMessage,
  }) = _InvalidFormat<T>;

  ///Returns a [ValidationFailure] for having a value that is outside of its acceptable range
  ///
  ///Value can be corrected using [failedValue].
  const factory ValidationFailure.outOfRange({
    required T failedValue,
    required String customValidationMessage,
  }) = _OutOfRange<T>;

  ///Returns a [ValidationFailure] for having a value that is already existing (a duplicate)
  ///
  ///Value can be corrected using [failedValue].
  const factory ValidationFailure.duplicate({
    required T failedValue,
    required String customValidationMessage,
  }) = _Dusplicate<T>;

  // coverage:ignore-end

  ///Gets the json key used in localizations based on the type of the [ValidationFailure]
  String get validationMessage => when(
        invalidFormat: (_, msg) => msg ?? 'Invalid characters',
        empty: (_, msg) => msg ?? 'Field cannot be empty',
        outOfRange: (_, msg) => msg,
        duplicate: (_, msg) => msg,
      );
}
