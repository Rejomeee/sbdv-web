// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NetworkFailure networkFailure) networkFailure,
    required TResult Function(SdkFailure sdkFailure) sdkFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NetworkFailure networkFailure)? networkFailure,
    TResult? Function(SdkFailure sdkFailure)? sdkFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NetworkFailure networkFailure)? networkFailure,
    TResult Function(SdkFailure sdkFailure)? sdkFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NetworkFailure value) networkFailure,
    required TResult Function(_SdkFailure value) sdkFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NetworkFailure value)? networkFailure,
    TResult? Function(_SdkFailure value)? sdkFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NetworkFailure value)? networkFailure,
    TResult Function(_SdkFailure value)? sdkFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppFailureCopyWith<$Res> {
  factory $AppFailureCopyWith(
          AppFailure value, $Res Function(AppFailure) then) =
      _$AppFailureCopyWithImpl<$Res, AppFailure>;
}

/// @nodoc
class _$AppFailureCopyWithImpl<$Res, $Val extends AppFailure>
    implements $AppFailureCopyWith<$Res> {
  _$AppFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$NetworkFailureImplCopyWith<$Res> {
  factory _$$NetworkFailureImplCopyWith(_$NetworkFailureImpl value,
          $Res Function(_$NetworkFailureImpl) then) =
      __$$NetworkFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({NetworkFailure networkFailure});

  $NetworkFailureCopyWith<$Res> get networkFailure;
}

/// @nodoc
class __$$NetworkFailureImplCopyWithImpl<$Res>
    extends _$AppFailureCopyWithImpl<$Res, _$NetworkFailureImpl>
    implements _$$NetworkFailureImplCopyWith<$Res> {
  __$$NetworkFailureImplCopyWithImpl(
      _$NetworkFailureImpl _value, $Res Function(_$NetworkFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? networkFailure = null,
  }) {
    return _then(_$NetworkFailureImpl(
      null == networkFailure
          ? _value.networkFailure
          : networkFailure // ignore: cast_nullable_to_non_nullable
              as NetworkFailure,
    ));
  }

  /// Create a copy of AppFailure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NetworkFailureCopyWith<$Res> get networkFailure {
    return $NetworkFailureCopyWith<$Res>(_value.networkFailure, (value) {
      return _then(_value.copyWith(networkFailure: value));
    });
  }
}

/// @nodoc

class _$NetworkFailureImpl extends _NetworkFailure {
  const _$NetworkFailureImpl(this.networkFailure) : super._();

  @override
  final NetworkFailure networkFailure;

  @override
  String toString() {
    return 'AppFailure.networkFailure(networkFailure: $networkFailure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworkFailureImpl &&
            (identical(other.networkFailure, networkFailure) ||
                other.networkFailure == networkFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, networkFailure);

  /// Create a copy of AppFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NetworkFailureImplCopyWith<_$NetworkFailureImpl> get copyWith =>
      __$$NetworkFailureImplCopyWithImpl<_$NetworkFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NetworkFailure networkFailure) networkFailure,
    required TResult Function(SdkFailure sdkFailure) sdkFailure,
  }) {
    return networkFailure(this.networkFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NetworkFailure networkFailure)? networkFailure,
    TResult? Function(SdkFailure sdkFailure)? sdkFailure,
  }) {
    return networkFailure?.call(this.networkFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NetworkFailure networkFailure)? networkFailure,
    TResult Function(SdkFailure sdkFailure)? sdkFailure,
    required TResult orElse(),
  }) {
    if (networkFailure != null) {
      return networkFailure(this.networkFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NetworkFailure value) networkFailure,
    required TResult Function(_SdkFailure value) sdkFailure,
  }) {
    return networkFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NetworkFailure value)? networkFailure,
    TResult? Function(_SdkFailure value)? sdkFailure,
  }) {
    return networkFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NetworkFailure value)? networkFailure,
    TResult Function(_SdkFailure value)? sdkFailure,
    required TResult orElse(),
  }) {
    if (networkFailure != null) {
      return networkFailure(this);
    }
    return orElse();
  }
}

abstract class _NetworkFailure extends AppFailure {
  const factory _NetworkFailure(final NetworkFailure networkFailure) =
      _$NetworkFailureImpl;
  const _NetworkFailure._() : super._();

  NetworkFailure get networkFailure;

  /// Create a copy of AppFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NetworkFailureImplCopyWith<_$NetworkFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SdkFailureImplCopyWith<$Res> {
  factory _$$SdkFailureImplCopyWith(
          _$SdkFailureImpl value, $Res Function(_$SdkFailureImpl) then) =
      __$$SdkFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SdkFailure sdkFailure});

  $SdkFailureCopyWith<$Res> get sdkFailure;
}

/// @nodoc
class __$$SdkFailureImplCopyWithImpl<$Res>
    extends _$AppFailureCopyWithImpl<$Res, _$SdkFailureImpl>
    implements _$$SdkFailureImplCopyWith<$Res> {
  __$$SdkFailureImplCopyWithImpl(
      _$SdkFailureImpl _value, $Res Function(_$SdkFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sdkFailure = null,
  }) {
    return _then(_$SdkFailureImpl(
      null == sdkFailure
          ? _value.sdkFailure
          : sdkFailure // ignore: cast_nullable_to_non_nullable
              as SdkFailure,
    ));
  }

  /// Create a copy of AppFailure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SdkFailureCopyWith<$Res> get sdkFailure {
    return $SdkFailureCopyWith<$Res>(_value.sdkFailure, (value) {
      return _then(_value.copyWith(sdkFailure: value));
    });
  }
}

/// @nodoc

class _$SdkFailureImpl extends _SdkFailure {
  const _$SdkFailureImpl(this.sdkFailure) : super._();

  @override
  final SdkFailure sdkFailure;

  @override
  String toString() {
    return 'AppFailure.sdkFailure(sdkFailure: $sdkFailure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SdkFailureImpl &&
            (identical(other.sdkFailure, sdkFailure) ||
                other.sdkFailure == sdkFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sdkFailure);

  /// Create a copy of AppFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SdkFailureImplCopyWith<_$SdkFailureImpl> get copyWith =>
      __$$SdkFailureImplCopyWithImpl<_$SdkFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NetworkFailure networkFailure) networkFailure,
    required TResult Function(SdkFailure sdkFailure) sdkFailure,
  }) {
    return sdkFailure(this.sdkFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NetworkFailure networkFailure)? networkFailure,
    TResult? Function(SdkFailure sdkFailure)? sdkFailure,
  }) {
    return sdkFailure?.call(this.sdkFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NetworkFailure networkFailure)? networkFailure,
    TResult Function(SdkFailure sdkFailure)? sdkFailure,
    required TResult orElse(),
  }) {
    if (sdkFailure != null) {
      return sdkFailure(this.sdkFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NetworkFailure value) networkFailure,
    required TResult Function(_SdkFailure value) sdkFailure,
  }) {
    return sdkFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NetworkFailure value)? networkFailure,
    TResult? Function(_SdkFailure value)? sdkFailure,
  }) {
    return sdkFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NetworkFailure value)? networkFailure,
    TResult Function(_SdkFailure value)? sdkFailure,
    required TResult orElse(),
  }) {
    if (sdkFailure != null) {
      return sdkFailure(this);
    }
    return orElse();
  }
}

abstract class _SdkFailure extends AppFailure {
  const factory _SdkFailure(final SdkFailure sdkFailure) = _$SdkFailureImpl;
  const _SdkFailure._() : super._();

  SdkFailure get sdkFailure;

  /// Create a copy of AppFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SdkFailureImplCopyWith<_$SdkFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
