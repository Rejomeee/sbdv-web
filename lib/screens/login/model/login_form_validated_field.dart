import 'package:dartz/dartz.dart';

import '../../../util/form/validated_field.dart';
import '../../../util/form/validation_failure.dart';
import '../../../util/form/validation_rules.dart';

///[ValidatedField] for a goal's name.
class LoginFormValidatedField extends ValidatedField<String> {
  const LoginFormValidatedField._(this.value);

  ///Constructor for a goal's name.
  factory LoginFormValidatedField(String name) {
    return LoginFormValidatedField._(
      validateStringNotEmpty(
        name,
        customValidationMessage: 'This field is required',
      ),
    );
  }

  @override
  final Either<ValidationFailure<String>, String> value;
}
