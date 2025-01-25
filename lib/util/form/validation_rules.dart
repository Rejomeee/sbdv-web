import 'package:dartz/dartz.dart';

import 'validation_failure.dart';

//* This file should contain all the validators that will be used by Value Objects.
//! All functions here should be tested.

///Makes sure that the [input] is not an empty string.
Either<ValidationFailure<String>, String> validateStringNotEmpty(
  String input, {
  String? customValidationMessage = 'Field cannot be empty',
}) {
  final validatedInput = input.isNotEmpty;
  return validatedInput
      ? right(input)
      : left(
          ValidationFailure.empty(
            failedValue: input,
            customValidationMessage: customValidationMessage,
          ),
        );
}

///Makes sure that the [input] is not an empty string.
Either<ValidationFailure<String>, String> validateStringNotSpacesOnly(
  String input, {
  String? customValidationMessage = 'Please use letters and numbers only',
}) {
  final validSearchRegex = RegExp(r'^[ ]+$');
  final validatedInput = !validSearchRegex.hasMatch(input);
  return validatedInput
      ? right(input)
      : left(
          ValidationFailure.empty(
            failedValue: input,
            customValidationMessage: customValidationMessage,
          ),
        );
}

///Makes sure that the [input] double is not null.
Either<ValidationFailure<double?>, double?> validateDoubleNotEmpty(
  double? input, {
  String? customValidationMessage = 'Field cannot be empty',
}) {
  final validatedInput = input != null;
  return validatedInput
      ? right(input)
      : left(
          ValidationFailure.empty(
            failedValue: input,
            customValidationMessage: customValidationMessage,
          ),
        );
}

///Validates that an [input] string matches the regex rules.
///
///A valid input is a string that is alphanumeric, and space.
Either<ValidationFailure<String>, String> validateLettersOnly(
  String input, {
  String? customValidationMessage,
}) {
  final validSearchRegex = RegExp(r'^[a-zA-Z0-9 ]*$');
  final validatedInput = validSearchRegex.hasMatch(input);
  return validatedInput
      ? right(input)
      : left(
          ValidationFailure.invalidFormat(
            failedValue: input,
            customValidationMessage: customValidationMessage,
          ),
        );
}

///Validates that an [input] string does not exceed the [maxLength] provided.
Either<ValidationFailure<String>, String> validateTextMaxLength(
  String input, {
  required String customValidationMessage,
  int maxLength = 40,
}) {
  if (input.length > maxLength) {
    return left(
      ValidationFailure.outOfRange(
        failedValue: input,
        customValidationMessage: customValidationMessage,
      ),
    );
  }
  return right(input);
}

///Validates that the [amount] is more than the minimum [minAmount].
Either<ValidationFailure<double?>, double?> validateDoubleMinimumAmount(
  double? amount, {
  required String customValidationMessage,
  required double minAmount,
}) {
  if ((amount ?? 0) < minAmount) {
    return left(
      ValidationFailure.outOfRange(
        failedValue: amount,
        customValidationMessage: customValidationMessage,
      ),
    );
  }
  return right(amount);
}

///Validates that the [amount] is less than the maximum [maxAmount].
Either<ValidationFailure<double?>, double?> validateDoubleMaximumAmount(
  double? amount, {
  required String customValidationMessage,
  required double maxAmount,
}) {
  if ((amount ?? 0) > maxAmount) {
    return left(
      ValidationFailure.outOfRange(
        failedValue: amount,
        customValidationMessage: customValidationMessage,
      ),
    );
  }
  return right(amount);
}
