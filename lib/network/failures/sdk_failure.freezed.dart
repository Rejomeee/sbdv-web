// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sdk_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SdkFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Exception exception, StackTrace? stacktrace)
        runtimeError,
    required TResult Function(Exception exception) generic,
    required TResult Function(String message) genericMessage,
    required TResult Function(String? message) connectionTimeout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Exception exception, StackTrace? stacktrace)?
        runtimeError,
    TResult? Function(Exception exception)? generic,
    TResult? Function(String message)? genericMessage,
    TResult? Function(String? message)? connectionTimeout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Exception exception, StackTrace? stacktrace)? runtimeError,
    TResult Function(Exception exception)? generic,
    TResult Function(String message)? genericMessage,
    TResult Function(String? message)? connectionTimeout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RuntimeError value) runtimeError,
    required TResult Function(_Generic value) generic,
    required TResult Function(_GenericMessage value) genericMessage,
    required TResult Function(_ConnectionTimeout value) connectionTimeout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RuntimeError value)? runtimeError,
    TResult? Function(_Generic value)? generic,
    TResult? Function(_GenericMessage value)? genericMessage,
    TResult? Function(_ConnectionTimeout value)? connectionTimeout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RuntimeError value)? runtimeError,
    TResult Function(_Generic value)? generic,
    TResult Function(_GenericMessage value)? genericMessage,
    TResult Function(_ConnectionTimeout value)? connectionTimeout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SdkFailureCopyWith<$Res> {
  factory $SdkFailureCopyWith(
          SdkFailure value, $Res Function(SdkFailure) then) =
      _$SdkFailureCopyWithImpl<$Res, SdkFailure>;
}

/// @nodoc
class _$SdkFailureCopyWithImpl<$Res, $Val extends SdkFailure>
    implements $SdkFailureCopyWith<$Res> {
  _$SdkFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SdkFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$RuntimeErrorImplCopyWith<$Res> {
  factory _$$RuntimeErrorImplCopyWith(
          _$RuntimeErrorImpl value, $Res Function(_$RuntimeErrorImpl) then) =
      __$$RuntimeErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Exception exception, StackTrace? stacktrace});
}

/// @nodoc
class __$$RuntimeErrorImplCopyWithImpl<$Res>
    extends _$SdkFailureCopyWithImpl<$Res, _$RuntimeErrorImpl>
    implements _$$RuntimeErrorImplCopyWith<$Res> {
  __$$RuntimeErrorImplCopyWithImpl(
      _$RuntimeErrorImpl _value, $Res Function(_$RuntimeErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of SdkFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exception = null,
    Object? stacktrace = freezed,
  }) {
    return _then(_$RuntimeErrorImpl(
      exception: null == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception,
      stacktrace: freezed == stacktrace
          ? _value.stacktrace
          : stacktrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ));
  }
}

/// @nodoc

class _$RuntimeErrorImpl extends _RuntimeError {
  const _$RuntimeErrorImpl({required this.exception, required this.stacktrace})
      : super._();

  @override
  final Exception exception;
  @override
  final StackTrace? stacktrace;

  @override
  String toString() {
    return 'SdkFailure.runtimeError(exception: $exception, stacktrace: $stacktrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RuntimeErrorImpl &&
            (identical(other.exception, exception) ||
                other.exception == exception) &&
            (identical(other.stacktrace, stacktrace) ||
                other.stacktrace == stacktrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, exception, stacktrace);

  /// Create a copy of SdkFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RuntimeErrorImplCopyWith<_$RuntimeErrorImpl> get copyWith =>
      __$$RuntimeErrorImplCopyWithImpl<_$RuntimeErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Exception exception, StackTrace? stacktrace)
        runtimeError,
    required TResult Function(Exception exception) generic,
    required TResult Function(String message) genericMessage,
    required TResult Function(String? message) connectionTimeout,
  }) {
    return runtimeError(exception, stacktrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Exception exception, StackTrace? stacktrace)?
        runtimeError,
    TResult? Function(Exception exception)? generic,
    TResult? Function(String message)? genericMessage,
    TResult? Function(String? message)? connectionTimeout,
  }) {
    return runtimeError?.call(exception, stacktrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Exception exception, StackTrace? stacktrace)? runtimeError,
    TResult Function(Exception exception)? generic,
    TResult Function(String message)? genericMessage,
    TResult Function(String? message)? connectionTimeout,
    required TResult orElse(),
  }) {
    if (runtimeError != null) {
      return runtimeError(exception, stacktrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RuntimeError value) runtimeError,
    required TResult Function(_Generic value) generic,
    required TResult Function(_GenericMessage value) genericMessage,
    required TResult Function(_ConnectionTimeout value) connectionTimeout,
  }) {
    return runtimeError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RuntimeError value)? runtimeError,
    TResult? Function(_Generic value)? generic,
    TResult? Function(_GenericMessage value)? genericMessage,
    TResult? Function(_ConnectionTimeout value)? connectionTimeout,
  }) {
    return runtimeError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RuntimeError value)? runtimeError,
    TResult Function(_Generic value)? generic,
    TResult Function(_GenericMessage value)? genericMessage,
    TResult Function(_ConnectionTimeout value)? connectionTimeout,
    required TResult orElse(),
  }) {
    if (runtimeError != null) {
      return runtimeError(this);
    }
    return orElse();
  }
}

abstract class _RuntimeError extends SdkFailure {
  const factory _RuntimeError(
      {required final Exception exception,
      required final StackTrace? stacktrace}) = _$RuntimeErrorImpl;
  const _RuntimeError._() : super._();

  Exception get exception;
  StackTrace? get stacktrace;

  /// Create a copy of SdkFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RuntimeErrorImplCopyWith<_$RuntimeErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GenericImplCopyWith<$Res> {
  factory _$$GenericImplCopyWith(
          _$GenericImpl value, $Res Function(_$GenericImpl) then) =
      __$$GenericImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Exception exception});
}

/// @nodoc
class __$$GenericImplCopyWithImpl<$Res>
    extends _$SdkFailureCopyWithImpl<$Res, _$GenericImpl>
    implements _$$GenericImplCopyWith<$Res> {
  __$$GenericImplCopyWithImpl(
      _$GenericImpl _value, $Res Function(_$GenericImpl) _then)
      : super(_value, _then);

  /// Create a copy of SdkFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exception = null,
  }) {
    return _then(_$GenericImpl(
      null == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception,
    ));
  }
}

/// @nodoc

class _$GenericImpl extends _Generic {
  const _$GenericImpl(this.exception) : super._();

  @override
  final Exception exception;

  @override
  String toString() {
    return 'SdkFailure.generic(exception: $exception)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenericImpl &&
            (identical(other.exception, exception) ||
                other.exception == exception));
  }

  @override
  int get hashCode => Object.hash(runtimeType, exception);

  /// Create a copy of SdkFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GenericImplCopyWith<_$GenericImpl> get copyWith =>
      __$$GenericImplCopyWithImpl<_$GenericImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Exception exception, StackTrace? stacktrace)
        runtimeError,
    required TResult Function(Exception exception) generic,
    required TResult Function(String message) genericMessage,
    required TResult Function(String? message) connectionTimeout,
  }) {
    return generic(exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Exception exception, StackTrace? stacktrace)?
        runtimeError,
    TResult? Function(Exception exception)? generic,
    TResult? Function(String message)? genericMessage,
    TResult? Function(String? message)? connectionTimeout,
  }) {
    return generic?.call(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Exception exception, StackTrace? stacktrace)? runtimeError,
    TResult Function(Exception exception)? generic,
    TResult Function(String message)? genericMessage,
    TResult Function(String? message)? connectionTimeout,
    required TResult orElse(),
  }) {
    if (generic != null) {
      return generic(exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RuntimeError value) runtimeError,
    required TResult Function(_Generic value) generic,
    required TResult Function(_GenericMessage value) genericMessage,
    required TResult Function(_ConnectionTimeout value) connectionTimeout,
  }) {
    return generic(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RuntimeError value)? runtimeError,
    TResult? Function(_Generic value)? generic,
    TResult? Function(_GenericMessage value)? genericMessage,
    TResult? Function(_ConnectionTimeout value)? connectionTimeout,
  }) {
    return generic?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RuntimeError value)? runtimeError,
    TResult Function(_Generic value)? generic,
    TResult Function(_GenericMessage value)? genericMessage,
    TResult Function(_ConnectionTimeout value)? connectionTimeout,
    required TResult orElse(),
  }) {
    if (generic != null) {
      return generic(this);
    }
    return orElse();
  }
}

abstract class _Generic extends SdkFailure {
  const factory _Generic(final Exception exception) = _$GenericImpl;
  const _Generic._() : super._();

  Exception get exception;

  /// Create a copy of SdkFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GenericImplCopyWith<_$GenericImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GenericMessageImplCopyWith<$Res> {
  factory _$$GenericMessageImplCopyWith(_$GenericMessageImpl value,
          $Res Function(_$GenericMessageImpl) then) =
      __$$GenericMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$GenericMessageImplCopyWithImpl<$Res>
    extends _$SdkFailureCopyWithImpl<$Res, _$GenericMessageImpl>
    implements _$$GenericMessageImplCopyWith<$Res> {
  __$$GenericMessageImplCopyWithImpl(
      _$GenericMessageImpl _value, $Res Function(_$GenericMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of SdkFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$GenericMessageImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GenericMessageImpl extends _GenericMessage {
  const _$GenericMessageImpl(this.message) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'SdkFailure.genericMessage(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenericMessageImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of SdkFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GenericMessageImplCopyWith<_$GenericMessageImpl> get copyWith =>
      __$$GenericMessageImplCopyWithImpl<_$GenericMessageImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Exception exception, StackTrace? stacktrace)
        runtimeError,
    required TResult Function(Exception exception) generic,
    required TResult Function(String message) genericMessage,
    required TResult Function(String? message) connectionTimeout,
  }) {
    return genericMessage(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Exception exception, StackTrace? stacktrace)?
        runtimeError,
    TResult? Function(Exception exception)? generic,
    TResult? Function(String message)? genericMessage,
    TResult? Function(String? message)? connectionTimeout,
  }) {
    return genericMessage?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Exception exception, StackTrace? stacktrace)? runtimeError,
    TResult Function(Exception exception)? generic,
    TResult Function(String message)? genericMessage,
    TResult Function(String? message)? connectionTimeout,
    required TResult orElse(),
  }) {
    if (genericMessage != null) {
      return genericMessage(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RuntimeError value) runtimeError,
    required TResult Function(_Generic value) generic,
    required TResult Function(_GenericMessage value) genericMessage,
    required TResult Function(_ConnectionTimeout value) connectionTimeout,
  }) {
    return genericMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RuntimeError value)? runtimeError,
    TResult? Function(_Generic value)? generic,
    TResult? Function(_GenericMessage value)? genericMessage,
    TResult? Function(_ConnectionTimeout value)? connectionTimeout,
  }) {
    return genericMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RuntimeError value)? runtimeError,
    TResult Function(_Generic value)? generic,
    TResult Function(_GenericMessage value)? genericMessage,
    TResult Function(_ConnectionTimeout value)? connectionTimeout,
    required TResult orElse(),
  }) {
    if (genericMessage != null) {
      return genericMessage(this);
    }
    return orElse();
  }
}

abstract class _GenericMessage extends SdkFailure {
  const factory _GenericMessage(final String message) = _$GenericMessageImpl;
  const _GenericMessage._() : super._();

  String get message;

  /// Create a copy of SdkFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GenericMessageImplCopyWith<_$GenericMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConnectionTimeoutImplCopyWith<$Res> {
  factory _$$ConnectionTimeoutImplCopyWith(_$ConnectionTimeoutImpl value,
          $Res Function(_$ConnectionTimeoutImpl) then) =
      __$$ConnectionTimeoutImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$ConnectionTimeoutImplCopyWithImpl<$Res>
    extends _$SdkFailureCopyWithImpl<$Res, _$ConnectionTimeoutImpl>
    implements _$$ConnectionTimeoutImplCopyWith<$Res> {
  __$$ConnectionTimeoutImplCopyWithImpl(_$ConnectionTimeoutImpl _value,
      $Res Function(_$ConnectionTimeoutImpl) _then)
      : super(_value, _then);

  /// Create a copy of SdkFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$ConnectionTimeoutImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ConnectionTimeoutImpl extends _ConnectionTimeout {
  const _$ConnectionTimeoutImpl({this.message}) : super._();

  @override
  final String? message;

  @override
  String toString() {
    return 'SdkFailure.connectionTimeout(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectionTimeoutImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of SdkFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConnectionTimeoutImplCopyWith<_$ConnectionTimeoutImpl> get copyWith =>
      __$$ConnectionTimeoutImplCopyWithImpl<_$ConnectionTimeoutImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Exception exception, StackTrace? stacktrace)
        runtimeError,
    required TResult Function(Exception exception) generic,
    required TResult Function(String message) genericMessage,
    required TResult Function(String? message) connectionTimeout,
  }) {
    return connectionTimeout(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Exception exception, StackTrace? stacktrace)?
        runtimeError,
    TResult? Function(Exception exception)? generic,
    TResult? Function(String message)? genericMessage,
    TResult? Function(String? message)? connectionTimeout,
  }) {
    return connectionTimeout?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Exception exception, StackTrace? stacktrace)? runtimeError,
    TResult Function(Exception exception)? generic,
    TResult Function(String message)? genericMessage,
    TResult Function(String? message)? connectionTimeout,
    required TResult orElse(),
  }) {
    if (connectionTimeout != null) {
      return connectionTimeout(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RuntimeError value) runtimeError,
    required TResult Function(_Generic value) generic,
    required TResult Function(_GenericMessage value) genericMessage,
    required TResult Function(_ConnectionTimeout value) connectionTimeout,
  }) {
    return connectionTimeout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RuntimeError value)? runtimeError,
    TResult? Function(_Generic value)? generic,
    TResult? Function(_GenericMessage value)? genericMessage,
    TResult? Function(_ConnectionTimeout value)? connectionTimeout,
  }) {
    return connectionTimeout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RuntimeError value)? runtimeError,
    TResult Function(_Generic value)? generic,
    TResult Function(_GenericMessage value)? genericMessage,
    TResult Function(_ConnectionTimeout value)? connectionTimeout,
    required TResult orElse(),
  }) {
    if (connectionTimeout != null) {
      return connectionTimeout(this);
    }
    return orElse();
  }
}

abstract class _ConnectionTimeout extends SdkFailure {
  const factory _ConnectionTimeout({final String? message}) =
      _$ConnectionTimeoutImpl;
  const _ConnectionTimeout._() : super._();

  String? get message;

  /// Create a copy of SdkFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConnectionTimeoutImplCopyWith<_$ConnectionTimeoutImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
