// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'validation_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ValidationFailure<T> {
  T get failedValue => throw _privateConstructorUsedError;
  String? get customValidationMessage => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, String? customValidationMessage)
        empty,
    required TResult Function(T failedValue, String? customValidationMessage)
        invalidFormat,
    required TResult Function(T failedValue, String customValidationMessage)
        outOfRange,
    required TResult Function(T failedValue, String customValidationMessage)
        duplicate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue, String? customValidationMessage)? empty,
    TResult? Function(T failedValue, String? customValidationMessage)?
        invalidFormat,
    TResult? Function(T failedValue, String customValidationMessage)?
        outOfRange,
    TResult? Function(T failedValue, String customValidationMessage)? duplicate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, String? customValidationMessage)? empty,
    TResult Function(T failedValue, String? customValidationMessage)?
        invalidFormat,
    TResult Function(T failedValue, String customValidationMessage)? outOfRange,
    TResult Function(T failedValue, String customValidationMessage)? duplicate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty<T> value) empty,
    required TResult Function(_InvalidFormat<T> value) invalidFormat,
    required TResult Function(_OutOfRange<T> value) outOfRange,
    required TResult Function(_Dusplicate<T> value) duplicate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Empty<T> value)? empty,
    TResult? Function(_InvalidFormat<T> value)? invalidFormat,
    TResult? Function(_OutOfRange<T> value)? outOfRange,
    TResult? Function(_Dusplicate<T> value)? duplicate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_InvalidFormat<T> value)? invalidFormat,
    TResult Function(_OutOfRange<T> value)? outOfRange,
    TResult Function(_Dusplicate<T> value)? duplicate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of ValidationFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ValidationFailureCopyWith<T, ValidationFailure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValidationFailureCopyWith<T, $Res> {
  factory $ValidationFailureCopyWith(ValidationFailure<T> value,
          $Res Function(ValidationFailure<T>) then) =
      _$ValidationFailureCopyWithImpl<T, $Res, ValidationFailure<T>>;
  @useResult
  $Res call({T failedValue, String customValidationMessage});
}

/// @nodoc
class _$ValidationFailureCopyWithImpl<T, $Res,
        $Val extends ValidationFailure<T>>
    implements $ValidationFailureCopyWith<T, $Res> {
  _$ValidationFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ValidationFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
    Object? customValidationMessage = null,
  }) {
    return _then(_value.copyWith(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
      customValidationMessage: null == customValidationMessage
          ? _value.customValidationMessage!
          : customValidationMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EmptyImplCopyWith<T, $Res>
    implements $ValidationFailureCopyWith<T, $Res> {
  factory _$$EmptyImplCopyWith(
          _$EmptyImpl<T> value, $Res Function(_$EmptyImpl<T>) then) =
      __$$EmptyImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue, String? customValidationMessage});
}

/// @nodoc
class __$$EmptyImplCopyWithImpl<T, $Res>
    extends _$ValidationFailureCopyWithImpl<T, $Res, _$EmptyImpl<T>>
    implements _$$EmptyImplCopyWith<T, $Res> {
  __$$EmptyImplCopyWithImpl(
      _$EmptyImpl<T> _value, $Res Function(_$EmptyImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ValidationFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
    Object? customValidationMessage = freezed,
  }) {
    return _then(_$EmptyImpl<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
      customValidationMessage: freezed == customValidationMessage
          ? _value.customValidationMessage
          : customValidationMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$EmptyImpl<T> extends _Empty<T> {
  const _$EmptyImpl({required this.failedValue, this.customValidationMessage})
      : super._();

  @override
  final T failedValue;
  @override
  final String? customValidationMessage;

  @override
  String toString() {
    return 'ValidationFailure<$T>.empty(failedValue: $failedValue, customValidationMessage: $customValidationMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmptyImpl<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue) &&
            (identical(
                    other.customValidationMessage, customValidationMessage) ||
                other.customValidationMessage == customValidationMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(failedValue),
      customValidationMessage);

  /// Create a copy of ValidationFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EmptyImplCopyWith<T, _$EmptyImpl<T>> get copyWith =>
      __$$EmptyImplCopyWithImpl<T, _$EmptyImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, String? customValidationMessage)
        empty,
    required TResult Function(T failedValue, String? customValidationMessage)
        invalidFormat,
    required TResult Function(T failedValue, String customValidationMessage)
        outOfRange,
    required TResult Function(T failedValue, String customValidationMessage)
        duplicate,
  }) {
    return empty(failedValue, customValidationMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue, String? customValidationMessage)? empty,
    TResult? Function(T failedValue, String? customValidationMessage)?
        invalidFormat,
    TResult? Function(T failedValue, String customValidationMessage)?
        outOfRange,
    TResult? Function(T failedValue, String customValidationMessage)? duplicate,
  }) {
    return empty?.call(failedValue, customValidationMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, String? customValidationMessage)? empty,
    TResult Function(T failedValue, String? customValidationMessage)?
        invalidFormat,
    TResult Function(T failedValue, String customValidationMessage)? outOfRange,
    TResult Function(T failedValue, String customValidationMessage)? duplicate,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(failedValue, customValidationMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty<T> value) empty,
    required TResult Function(_InvalidFormat<T> value) invalidFormat,
    required TResult Function(_OutOfRange<T> value) outOfRange,
    required TResult Function(_Dusplicate<T> value) duplicate,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Empty<T> value)? empty,
    TResult? Function(_InvalidFormat<T> value)? invalidFormat,
    TResult? Function(_OutOfRange<T> value)? outOfRange,
    TResult? Function(_Dusplicate<T> value)? duplicate,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_InvalidFormat<T> value)? invalidFormat,
    TResult Function(_OutOfRange<T> value)? outOfRange,
    TResult Function(_Dusplicate<T> value)? duplicate,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _Empty<T> extends ValidationFailure<T> {
  const factory _Empty(
      {required final T failedValue,
      final String? customValidationMessage}) = _$EmptyImpl<T>;
  const _Empty._() : super._();

  @override
  T get failedValue;
  @override
  String? get customValidationMessage;

  /// Create a copy of ValidationFailure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EmptyImplCopyWith<T, _$EmptyImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvalidFormatImplCopyWith<T, $Res>
    implements $ValidationFailureCopyWith<T, $Res> {
  factory _$$InvalidFormatImplCopyWith(_$InvalidFormatImpl<T> value,
          $Res Function(_$InvalidFormatImpl<T>) then) =
      __$$InvalidFormatImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue, String? customValidationMessage});
}

/// @nodoc
class __$$InvalidFormatImplCopyWithImpl<T, $Res>
    extends _$ValidationFailureCopyWithImpl<T, $Res, _$InvalidFormatImpl<T>>
    implements _$$InvalidFormatImplCopyWith<T, $Res> {
  __$$InvalidFormatImplCopyWithImpl(_$InvalidFormatImpl<T> _value,
      $Res Function(_$InvalidFormatImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ValidationFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
    Object? customValidationMessage = freezed,
  }) {
    return _then(_$InvalidFormatImpl<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
      customValidationMessage: freezed == customValidationMessage
          ? _value.customValidationMessage
          : customValidationMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$InvalidFormatImpl<T> extends _InvalidFormat<T> {
  const _$InvalidFormatImpl(
      {required this.failedValue, this.customValidationMessage})
      : super._();

  @override
  final T failedValue;
  @override
  final String? customValidationMessage;

  @override
  String toString() {
    return 'ValidationFailure<$T>.invalidFormat(failedValue: $failedValue, customValidationMessage: $customValidationMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidFormatImpl<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue) &&
            (identical(
                    other.customValidationMessage, customValidationMessage) ||
                other.customValidationMessage == customValidationMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(failedValue),
      customValidationMessage);

  /// Create a copy of ValidationFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InvalidFormatImplCopyWith<T, _$InvalidFormatImpl<T>> get copyWith =>
      __$$InvalidFormatImplCopyWithImpl<T, _$InvalidFormatImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, String? customValidationMessage)
        empty,
    required TResult Function(T failedValue, String? customValidationMessage)
        invalidFormat,
    required TResult Function(T failedValue, String customValidationMessage)
        outOfRange,
    required TResult Function(T failedValue, String customValidationMessage)
        duplicate,
  }) {
    return invalidFormat(failedValue, customValidationMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue, String? customValidationMessage)? empty,
    TResult? Function(T failedValue, String? customValidationMessage)?
        invalidFormat,
    TResult? Function(T failedValue, String customValidationMessage)?
        outOfRange,
    TResult? Function(T failedValue, String customValidationMessage)? duplicate,
  }) {
    return invalidFormat?.call(failedValue, customValidationMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, String? customValidationMessage)? empty,
    TResult Function(T failedValue, String? customValidationMessage)?
        invalidFormat,
    TResult Function(T failedValue, String customValidationMessage)? outOfRange,
    TResult Function(T failedValue, String customValidationMessage)? duplicate,
    required TResult orElse(),
  }) {
    if (invalidFormat != null) {
      return invalidFormat(failedValue, customValidationMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty<T> value) empty,
    required TResult Function(_InvalidFormat<T> value) invalidFormat,
    required TResult Function(_OutOfRange<T> value) outOfRange,
    required TResult Function(_Dusplicate<T> value) duplicate,
  }) {
    return invalidFormat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Empty<T> value)? empty,
    TResult? Function(_InvalidFormat<T> value)? invalidFormat,
    TResult? Function(_OutOfRange<T> value)? outOfRange,
    TResult? Function(_Dusplicate<T> value)? duplicate,
  }) {
    return invalidFormat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_InvalidFormat<T> value)? invalidFormat,
    TResult Function(_OutOfRange<T> value)? outOfRange,
    TResult Function(_Dusplicate<T> value)? duplicate,
    required TResult orElse(),
  }) {
    if (invalidFormat != null) {
      return invalidFormat(this);
    }
    return orElse();
  }
}

abstract class _InvalidFormat<T> extends ValidationFailure<T> {
  const factory _InvalidFormat(
      {required final T failedValue,
      final String? customValidationMessage}) = _$InvalidFormatImpl<T>;
  const _InvalidFormat._() : super._();

  @override
  T get failedValue;
  @override
  String? get customValidationMessage;

  /// Create a copy of ValidationFailure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InvalidFormatImplCopyWith<T, _$InvalidFormatImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OutOfRangeImplCopyWith<T, $Res>
    implements $ValidationFailureCopyWith<T, $Res> {
  factory _$$OutOfRangeImplCopyWith(
          _$OutOfRangeImpl<T> value, $Res Function(_$OutOfRangeImpl<T>) then) =
      __$$OutOfRangeImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue, String customValidationMessage});
}

/// @nodoc
class __$$OutOfRangeImplCopyWithImpl<T, $Res>
    extends _$ValidationFailureCopyWithImpl<T, $Res, _$OutOfRangeImpl<T>>
    implements _$$OutOfRangeImplCopyWith<T, $Res> {
  __$$OutOfRangeImplCopyWithImpl(
      _$OutOfRangeImpl<T> _value, $Res Function(_$OutOfRangeImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ValidationFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
    Object? customValidationMessage = null,
  }) {
    return _then(_$OutOfRangeImpl<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
      customValidationMessage: null == customValidationMessage
          ? _value.customValidationMessage
          : customValidationMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OutOfRangeImpl<T> extends _OutOfRange<T> {
  const _$OutOfRangeImpl(
      {required this.failedValue, required this.customValidationMessage})
      : super._();

  @override
  final T failedValue;
  @override
  final String customValidationMessage;

  @override
  String toString() {
    return 'ValidationFailure<$T>.outOfRange(failedValue: $failedValue, customValidationMessage: $customValidationMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OutOfRangeImpl<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue) &&
            (identical(
                    other.customValidationMessage, customValidationMessage) ||
                other.customValidationMessage == customValidationMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(failedValue),
      customValidationMessage);

  /// Create a copy of ValidationFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OutOfRangeImplCopyWith<T, _$OutOfRangeImpl<T>> get copyWith =>
      __$$OutOfRangeImplCopyWithImpl<T, _$OutOfRangeImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, String? customValidationMessage)
        empty,
    required TResult Function(T failedValue, String? customValidationMessage)
        invalidFormat,
    required TResult Function(T failedValue, String customValidationMessage)
        outOfRange,
    required TResult Function(T failedValue, String customValidationMessage)
        duplicate,
  }) {
    return outOfRange(failedValue, customValidationMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue, String? customValidationMessage)? empty,
    TResult? Function(T failedValue, String? customValidationMessage)?
        invalidFormat,
    TResult? Function(T failedValue, String customValidationMessage)?
        outOfRange,
    TResult? Function(T failedValue, String customValidationMessage)? duplicate,
  }) {
    return outOfRange?.call(failedValue, customValidationMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, String? customValidationMessage)? empty,
    TResult Function(T failedValue, String? customValidationMessage)?
        invalidFormat,
    TResult Function(T failedValue, String customValidationMessage)? outOfRange,
    TResult Function(T failedValue, String customValidationMessage)? duplicate,
    required TResult orElse(),
  }) {
    if (outOfRange != null) {
      return outOfRange(failedValue, customValidationMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty<T> value) empty,
    required TResult Function(_InvalidFormat<T> value) invalidFormat,
    required TResult Function(_OutOfRange<T> value) outOfRange,
    required TResult Function(_Dusplicate<T> value) duplicate,
  }) {
    return outOfRange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Empty<T> value)? empty,
    TResult? Function(_InvalidFormat<T> value)? invalidFormat,
    TResult? Function(_OutOfRange<T> value)? outOfRange,
    TResult? Function(_Dusplicate<T> value)? duplicate,
  }) {
    return outOfRange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_InvalidFormat<T> value)? invalidFormat,
    TResult Function(_OutOfRange<T> value)? outOfRange,
    TResult Function(_Dusplicate<T> value)? duplicate,
    required TResult orElse(),
  }) {
    if (outOfRange != null) {
      return outOfRange(this);
    }
    return orElse();
  }
}

abstract class _OutOfRange<T> extends ValidationFailure<T> {
  const factory _OutOfRange(
      {required final T failedValue,
      required final String customValidationMessage}) = _$OutOfRangeImpl<T>;
  const _OutOfRange._() : super._();

  @override
  T get failedValue;
  @override
  String get customValidationMessage;

  /// Create a copy of ValidationFailure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OutOfRangeImplCopyWith<T, _$OutOfRangeImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DusplicateImplCopyWith<T, $Res>
    implements $ValidationFailureCopyWith<T, $Res> {
  factory _$$DusplicateImplCopyWith(
          _$DusplicateImpl<T> value, $Res Function(_$DusplicateImpl<T>) then) =
      __$$DusplicateImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue, String customValidationMessage});
}

/// @nodoc
class __$$DusplicateImplCopyWithImpl<T, $Res>
    extends _$ValidationFailureCopyWithImpl<T, $Res, _$DusplicateImpl<T>>
    implements _$$DusplicateImplCopyWith<T, $Res> {
  __$$DusplicateImplCopyWithImpl(
      _$DusplicateImpl<T> _value, $Res Function(_$DusplicateImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ValidationFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
    Object? customValidationMessage = null,
  }) {
    return _then(_$DusplicateImpl<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
      customValidationMessage: null == customValidationMessage
          ? _value.customValidationMessage
          : customValidationMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DusplicateImpl<T> extends _Dusplicate<T> {
  const _$DusplicateImpl(
      {required this.failedValue, required this.customValidationMessage})
      : super._();

  @override
  final T failedValue;
  @override
  final String customValidationMessage;

  @override
  String toString() {
    return 'ValidationFailure<$T>.duplicate(failedValue: $failedValue, customValidationMessage: $customValidationMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DusplicateImpl<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue) &&
            (identical(
                    other.customValidationMessage, customValidationMessage) ||
                other.customValidationMessage == customValidationMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(failedValue),
      customValidationMessage);

  /// Create a copy of ValidationFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DusplicateImplCopyWith<T, _$DusplicateImpl<T>> get copyWith =>
      __$$DusplicateImplCopyWithImpl<T, _$DusplicateImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, String? customValidationMessage)
        empty,
    required TResult Function(T failedValue, String? customValidationMessage)
        invalidFormat,
    required TResult Function(T failedValue, String customValidationMessage)
        outOfRange,
    required TResult Function(T failedValue, String customValidationMessage)
        duplicate,
  }) {
    return duplicate(failedValue, customValidationMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue, String? customValidationMessage)? empty,
    TResult? Function(T failedValue, String? customValidationMessage)?
        invalidFormat,
    TResult? Function(T failedValue, String customValidationMessage)?
        outOfRange,
    TResult? Function(T failedValue, String customValidationMessage)? duplicate,
  }) {
    return duplicate?.call(failedValue, customValidationMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, String? customValidationMessage)? empty,
    TResult Function(T failedValue, String? customValidationMessage)?
        invalidFormat,
    TResult Function(T failedValue, String customValidationMessage)? outOfRange,
    TResult Function(T failedValue, String customValidationMessage)? duplicate,
    required TResult orElse(),
  }) {
    if (duplicate != null) {
      return duplicate(failedValue, customValidationMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty<T> value) empty,
    required TResult Function(_InvalidFormat<T> value) invalidFormat,
    required TResult Function(_OutOfRange<T> value) outOfRange,
    required TResult Function(_Dusplicate<T> value) duplicate,
  }) {
    return duplicate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Empty<T> value)? empty,
    TResult? Function(_InvalidFormat<T> value)? invalidFormat,
    TResult? Function(_OutOfRange<T> value)? outOfRange,
    TResult? Function(_Dusplicate<T> value)? duplicate,
  }) {
    return duplicate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_InvalidFormat<T> value)? invalidFormat,
    TResult Function(_OutOfRange<T> value)? outOfRange,
    TResult Function(_Dusplicate<T> value)? duplicate,
    required TResult orElse(),
  }) {
    if (duplicate != null) {
      return duplicate(this);
    }
    return orElse();
  }
}

abstract class _Dusplicate<T> extends ValidationFailure<T> {
  const factory _Dusplicate(
      {required final T failedValue,
      required final String customValidationMessage}) = _$DusplicateImpl<T>;
  const _Dusplicate._() : super._();

  @override
  T get failedValue;
  @override
  String get customValidationMessage;

  /// Create a copy of ValidationFailure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DusplicateImplCopyWith<T, _$DusplicateImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
