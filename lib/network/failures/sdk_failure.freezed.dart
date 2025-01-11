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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
}

/// @nodoc
abstract class _$$_RuntimeErrorCopyWith<$Res> {
  factory _$$_RuntimeErrorCopyWith(
          _$_RuntimeError value, $Res Function(_$_RuntimeError) then) =
      __$$_RuntimeErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({Exception exception, StackTrace? stacktrace});
}

/// @nodoc
class __$$_RuntimeErrorCopyWithImpl<$Res>
    extends _$SdkFailureCopyWithImpl<$Res, _$_RuntimeError>
    implements _$$_RuntimeErrorCopyWith<$Res> {
  __$$_RuntimeErrorCopyWithImpl(
      _$_RuntimeError _value, $Res Function(_$_RuntimeError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exception = null,
    Object? stacktrace = freezed,
  }) {
    return _then(_$_RuntimeError(
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

class _$_RuntimeError extends _RuntimeError {
  const _$_RuntimeError({required this.exception, required this.stacktrace})
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RuntimeError &&
            (identical(other.exception, exception) ||
                other.exception == exception) &&
            (identical(other.stacktrace, stacktrace) ||
                other.stacktrace == stacktrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, exception, stacktrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RuntimeErrorCopyWith<_$_RuntimeError> get copyWith =>
      __$$_RuntimeErrorCopyWithImpl<_$_RuntimeError>(this, _$identity);

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
      required final StackTrace? stacktrace}) = _$_RuntimeError;
  const _RuntimeError._() : super._();

  Exception get exception;
  StackTrace? get stacktrace;
  @JsonKey(ignore: true)
  _$$_RuntimeErrorCopyWith<_$_RuntimeError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GenericCopyWith<$Res> {
  factory _$$_GenericCopyWith(
          _$_Generic value, $Res Function(_$_Generic) then) =
      __$$_GenericCopyWithImpl<$Res>;
  @useResult
  $Res call({Exception exception});
}

/// @nodoc
class __$$_GenericCopyWithImpl<$Res>
    extends _$SdkFailureCopyWithImpl<$Res, _$_Generic>
    implements _$$_GenericCopyWith<$Res> {
  __$$_GenericCopyWithImpl(_$_Generic _value, $Res Function(_$_Generic) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exception = null,
  }) {
    return _then(_$_Generic(
      null == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception,
    ));
  }
}

/// @nodoc

class _$_Generic extends _Generic {
  const _$_Generic(this.exception) : super._();

  @override
  final Exception exception;

  @override
  String toString() {
    return 'SdkFailure.generic(exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Generic &&
            (identical(other.exception, exception) ||
                other.exception == exception));
  }

  @override
  int get hashCode => Object.hash(runtimeType, exception);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GenericCopyWith<_$_Generic> get copyWith =>
      __$$_GenericCopyWithImpl<_$_Generic>(this, _$identity);

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
  const factory _Generic(final Exception exception) = _$_Generic;
  const _Generic._() : super._();

  Exception get exception;
  @JsonKey(ignore: true)
  _$$_GenericCopyWith<_$_Generic> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GenericMessageCopyWith<$Res> {
  factory _$$_GenericMessageCopyWith(
          _$_GenericMessage value, $Res Function(_$_GenericMessage) then) =
      __$$_GenericMessageCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_GenericMessageCopyWithImpl<$Res>
    extends _$SdkFailureCopyWithImpl<$Res, _$_GenericMessage>
    implements _$$_GenericMessageCopyWith<$Res> {
  __$$_GenericMessageCopyWithImpl(
      _$_GenericMessage _value, $Res Function(_$_GenericMessage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_GenericMessage(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GenericMessage extends _GenericMessage {
  const _$_GenericMessage(this.message) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'SdkFailure.genericMessage(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GenericMessage &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GenericMessageCopyWith<_$_GenericMessage> get copyWith =>
      __$$_GenericMessageCopyWithImpl<_$_GenericMessage>(this, _$identity);

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
  const factory _GenericMessage(final String message) = _$_GenericMessage;
  const _GenericMessage._() : super._();

  String get message;
  @JsonKey(ignore: true)
  _$$_GenericMessageCopyWith<_$_GenericMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ConnectionTimeoutCopyWith<$Res> {
  factory _$$_ConnectionTimeoutCopyWith(_$_ConnectionTimeout value,
          $Res Function(_$_ConnectionTimeout) then) =
      __$$_ConnectionTimeoutCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$_ConnectionTimeoutCopyWithImpl<$Res>
    extends _$SdkFailureCopyWithImpl<$Res, _$_ConnectionTimeout>
    implements _$$_ConnectionTimeoutCopyWith<$Res> {
  __$$_ConnectionTimeoutCopyWithImpl(
      _$_ConnectionTimeout _value, $Res Function(_$_ConnectionTimeout) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_ConnectionTimeout(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ConnectionTimeout extends _ConnectionTimeout {
  const _$_ConnectionTimeout({this.message}) : super._();

  @override
  final String? message;

  @override
  String toString() {
    return 'SdkFailure.connectionTimeout(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConnectionTimeout &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ConnectionTimeoutCopyWith<_$_ConnectionTimeout> get copyWith =>
      __$$_ConnectionTimeoutCopyWithImpl<_$_ConnectionTimeout>(
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
      _$_ConnectionTimeout;
  const _ConnectionTimeout._() : super._();

  String? get message;
  @JsonKey(ignore: true)
  _$$_ConnectionTimeoutCopyWith<_$_ConnectionTimeout> get copyWith =>
      throw _privateConstructorUsedError;
}
