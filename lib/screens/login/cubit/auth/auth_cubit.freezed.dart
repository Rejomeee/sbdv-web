// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthState {
  LoginFormValidatedField get validatedUsername =>
      throw _privateConstructorUsedError;
  LoginFormValidatedField get validatedPassword =>
      throw _privateConstructorUsedError;
  AuthModel get model => throw _privateConstructorUsedError;
  bool get shouldShowValidation => throw _privateConstructorUsedError;
  AuthStates? get state => throw _privateConstructorUsedError;
  AppFailure? get error => throw _privateConstructorUsedError;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call(
      {LoginFormValidatedField validatedUsername,
      LoginFormValidatedField validatedPassword,
      AuthModel model,
      bool shouldShowValidation,
      AuthStates? state,
      AppFailure? error});

  $AuthModelCopyWith<$Res> get model;
  $AppFailureCopyWith<$Res>? get error;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? validatedUsername = null,
    Object? validatedPassword = null,
    Object? model = null,
    Object? shouldShowValidation = null,
    Object? state = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      validatedUsername: null == validatedUsername
          ? _value.validatedUsername
          : validatedUsername // ignore: cast_nullable_to_non_nullable
              as LoginFormValidatedField,
      validatedPassword: null == validatedPassword
          ? _value.validatedPassword
          : validatedPassword // ignore: cast_nullable_to_non_nullable
              as LoginFormValidatedField,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as AuthModel,
      shouldShowValidation: null == shouldShowValidation
          ? _value.shouldShowValidation
          : shouldShowValidation // ignore: cast_nullable_to_non_nullable
              as bool,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as AuthStates?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as AppFailure?,
    ) as $Val);
  }

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AuthModelCopyWith<$Res> get model {
    return $AuthModelCopyWith<$Res>(_value.model, (value) {
      return _then(_value.copyWith(model: value) as $Val);
    });
  }

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppFailureCopyWith<$Res>? get error {
    if (_value.error == null) {
      return null;
    }

    return $AppFailureCopyWith<$Res>(_value.error!, (value) {
      return _then(_value.copyWith(error: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AuthStateImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$AuthStateImplCopyWith(
          _$AuthStateImpl value, $Res Function(_$AuthStateImpl) then) =
      __$$AuthStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {LoginFormValidatedField validatedUsername,
      LoginFormValidatedField validatedPassword,
      AuthModel model,
      bool shouldShowValidation,
      AuthStates? state,
      AppFailure? error});

  @override
  $AuthModelCopyWith<$Res> get model;
  @override
  $AppFailureCopyWith<$Res>? get error;
}

/// @nodoc
class __$$AuthStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateImpl>
    implements _$$AuthStateImplCopyWith<$Res> {
  __$$AuthStateImplCopyWithImpl(
      _$AuthStateImpl _value, $Res Function(_$AuthStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? validatedUsername = null,
    Object? validatedPassword = null,
    Object? model = null,
    Object? shouldShowValidation = null,
    Object? state = freezed,
    Object? error = freezed,
  }) {
    return _then(_$AuthStateImpl(
      validatedUsername: null == validatedUsername
          ? _value.validatedUsername
          : validatedUsername // ignore: cast_nullable_to_non_nullable
              as LoginFormValidatedField,
      validatedPassword: null == validatedPassword
          ? _value.validatedPassword
          : validatedPassword // ignore: cast_nullable_to_non_nullable
              as LoginFormValidatedField,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as AuthModel,
      shouldShowValidation: null == shouldShowValidation
          ? _value.shouldShowValidation
          : shouldShowValidation // ignore: cast_nullable_to_non_nullable
              as bool,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as AuthStates?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as AppFailure?,
    ));
  }
}

/// @nodoc

class _$AuthStateImpl implements _AuthState {
  const _$AuthStateImpl(
      {required this.validatedUsername,
      required this.validatedPassword,
      required this.model,
      required this.shouldShowValidation,
      this.state,
      this.error});

  @override
  final LoginFormValidatedField validatedUsername;
  @override
  final LoginFormValidatedField validatedPassword;
  @override
  final AuthModel model;
  @override
  final bool shouldShowValidation;
  @override
  final AuthStates? state;
  @override
  final AppFailure? error;

  @override
  String toString() {
    return 'AuthState(validatedUsername: $validatedUsername, validatedPassword: $validatedPassword, model: $model, shouldShowValidation: $shouldShowValidation, state: $state, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateImpl &&
            (identical(other.validatedUsername, validatedUsername) ||
                other.validatedUsername == validatedUsername) &&
            (identical(other.validatedPassword, validatedPassword) ||
                other.validatedPassword == validatedPassword) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.shouldShowValidation, shouldShowValidation) ||
                other.shouldShowValidation == shouldShowValidation) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, validatedUsername,
      validatedPassword, model, shouldShowValidation, state, error);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      __$$AuthStateImplCopyWithImpl<_$AuthStateImpl>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  const factory _AuthState(
      {required final LoginFormValidatedField validatedUsername,
      required final LoginFormValidatedField validatedPassword,
      required final AuthModel model,
      required final bool shouldShowValidation,
      final AuthStates? state,
      final AppFailure? error}) = _$AuthStateImpl;

  @override
  LoginFormValidatedField get validatedUsername;
  @override
  LoginFormValidatedField get validatedPassword;
  @override
  AuthModel get model;
  @override
  bool get shouldShowValidation;
  @override
  AuthStates? get state;
  @override
  AppFailure? get error;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
