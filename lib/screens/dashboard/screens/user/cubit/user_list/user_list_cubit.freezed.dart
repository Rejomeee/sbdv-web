// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_list_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserListState {
  PaginationModel<UserModel> get userTable =>
      throw _privateConstructorUsedError;
  UserSource<UserModel> get userSource => throw _privateConstructorUsedError;

  /// Create a copy of UserListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserListStateCopyWith<UserListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserListStateCopyWith<$Res> {
  factory $UserListStateCopyWith(
          UserListState value, $Res Function(UserListState) then) =
      _$UserListStateCopyWithImpl<$Res, UserListState>;
  @useResult
  $Res call(
      {PaginationModel<UserModel> userTable, UserSource<UserModel> userSource});
}

/// @nodoc
class _$UserListStateCopyWithImpl<$Res, $Val extends UserListState>
    implements $UserListStateCopyWith<$Res> {
  _$UserListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userTable = null,
    Object? userSource = null,
  }) {
    return _then(_value.copyWith(
      userTable: null == userTable
          ? _value.userTable
          : userTable // ignore: cast_nullable_to_non_nullable
              as PaginationModel<UserModel>,
      userSource: null == userSource
          ? _value.userSource
          : userSource // ignore: cast_nullable_to_non_nullable
              as UserSource<UserModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserListStateImplCopyWith<$Res>
    implements $UserListStateCopyWith<$Res> {
  factory _$$UserListStateImplCopyWith(
          _$UserListStateImpl value, $Res Function(_$UserListStateImpl) then) =
      __$$UserListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PaginationModel<UserModel> userTable, UserSource<UserModel> userSource});
}

/// @nodoc
class __$$UserListStateImplCopyWithImpl<$Res>
    extends _$UserListStateCopyWithImpl<$Res, _$UserListStateImpl>
    implements _$$UserListStateImplCopyWith<$Res> {
  __$$UserListStateImplCopyWithImpl(
      _$UserListStateImpl _value, $Res Function(_$UserListStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userTable = null,
    Object? userSource = null,
  }) {
    return _then(_$UserListStateImpl(
      userTable: null == userTable
          ? _value.userTable
          : userTable // ignore: cast_nullable_to_non_nullable
              as PaginationModel<UserModel>,
      userSource: null == userSource
          ? _value.userSource
          : userSource // ignore: cast_nullable_to_non_nullable
              as UserSource<UserModel>,
    ));
  }
}

/// @nodoc

class _$UserListStateImpl implements _UserListState {
  const _$UserListStateImpl(
      {required this.userTable, required this.userSource});

  @override
  final PaginationModel<UserModel> userTable;
  @override
  final UserSource<UserModel> userSource;

  @override
  String toString() {
    return 'UserListState(userTable: $userTable, userSource: $userSource)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserListStateImpl &&
            (identical(other.userTable, userTable) ||
                other.userTable == userTable) &&
            (identical(other.userSource, userSource) ||
                other.userSource == userSource));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userTable, userSource);

  /// Create a copy of UserListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserListStateImplCopyWith<_$UserListStateImpl> get copyWith =>
      __$$UserListStateImplCopyWithImpl<_$UserListStateImpl>(this, _$identity);
}

abstract class _UserListState implements UserListState {
  const factory _UserListState(
      {required final PaginationModel<UserModel> userTable,
      required final UserSource<UserModel> userSource}) = _$UserListStateImpl;

  @override
  PaginationModel<UserModel> get userTable;
  @override
  UserSource<UserModel> get userSource;

  /// Create a copy of UserListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserListStateImplCopyWith<_$UserListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
