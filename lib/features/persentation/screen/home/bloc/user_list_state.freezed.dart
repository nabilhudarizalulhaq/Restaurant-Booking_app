// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<User> users) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<User> users)? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<User> users)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserListInitial value) initial,
    required TResult Function(UserListLoading value) loading,
    required TResult Function(UserListLoaded value) loaded,
    required TResult Function(UserListError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserListInitial value)? initial,
    TResult? Function(UserListLoading value)? loading,
    TResult? Function(UserListLoaded value)? loaded,
    TResult? Function(UserListError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserListInitial value)? initial,
    TResult Function(UserListLoading value)? loading,
    TResult Function(UserListLoaded value)? loaded,
    TResult Function(UserListError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserListStateCopyWith<$Res> {
  factory $UserListStateCopyWith(
          UserListState value, $Res Function(UserListState) then) =
      _$UserListStateCopyWithImpl<$Res, UserListState>;
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
}

/// @nodoc
abstract class _$$UserListInitialImplCopyWith<$Res> {
  factory _$$UserListInitialImplCopyWith(_$UserListInitialImpl value,
          $Res Function(_$UserListInitialImpl) then) =
      __$$UserListInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserListInitialImplCopyWithImpl<$Res>
    extends _$UserListStateCopyWithImpl<$Res, _$UserListInitialImpl>
    implements _$$UserListInitialImplCopyWith<$Res> {
  __$$UserListInitialImplCopyWithImpl(
      _$UserListInitialImpl _value, $Res Function(_$UserListInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserListState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UserListInitialImpl implements UserListInitial {
  const _$UserListInitialImpl();

  @override
  String toString() {
    return 'UserListState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserListInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<User> users) loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<User> users)? loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<User> users)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserListInitial value) initial,
    required TResult Function(UserListLoading value) loading,
    required TResult Function(UserListLoaded value) loaded,
    required TResult Function(UserListError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserListInitial value)? initial,
    TResult? Function(UserListLoading value)? loading,
    TResult? Function(UserListLoaded value)? loaded,
    TResult? Function(UserListError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserListInitial value)? initial,
    TResult Function(UserListLoading value)? loading,
    TResult Function(UserListLoaded value)? loaded,
    TResult Function(UserListError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class UserListInitial implements UserListState {
  const factory UserListInitial() = _$UserListInitialImpl;
}

/// @nodoc
abstract class _$$UserListLoadingImplCopyWith<$Res> {
  factory _$$UserListLoadingImplCopyWith(_$UserListLoadingImpl value,
          $Res Function(_$UserListLoadingImpl) then) =
      __$$UserListLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserListLoadingImplCopyWithImpl<$Res>
    extends _$UserListStateCopyWithImpl<$Res, _$UserListLoadingImpl>
    implements _$$UserListLoadingImplCopyWith<$Res> {
  __$$UserListLoadingImplCopyWithImpl(
      _$UserListLoadingImpl _value, $Res Function(_$UserListLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserListState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UserListLoadingImpl implements UserListLoading {
  const _$UserListLoadingImpl();

  @override
  String toString() {
    return 'UserListState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserListLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<User> users) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<User> users)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<User> users)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserListInitial value) initial,
    required TResult Function(UserListLoading value) loading,
    required TResult Function(UserListLoaded value) loaded,
    required TResult Function(UserListError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserListInitial value)? initial,
    TResult? Function(UserListLoading value)? loading,
    TResult? Function(UserListLoaded value)? loaded,
    TResult? Function(UserListError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserListInitial value)? initial,
    TResult Function(UserListLoading value)? loading,
    TResult Function(UserListLoaded value)? loaded,
    TResult Function(UserListError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class UserListLoading implements UserListState {
  const factory UserListLoading() = _$UserListLoadingImpl;
}

/// @nodoc
abstract class _$$UserListLoadedImplCopyWith<$Res> {
  factory _$$UserListLoadedImplCopyWith(_$UserListLoadedImpl value,
          $Res Function(_$UserListLoadedImpl) then) =
      __$$UserListLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<User> users});
}

/// @nodoc
class __$$UserListLoadedImplCopyWithImpl<$Res>
    extends _$UserListStateCopyWithImpl<$Res, _$UserListLoadedImpl>
    implements _$$UserListLoadedImplCopyWith<$Res> {
  __$$UserListLoadedImplCopyWithImpl(
      _$UserListLoadedImpl _value, $Res Function(_$UserListLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
  }) {
    return _then(_$UserListLoadedImpl(
      users: null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
    ));
  }
}

/// @nodoc

class _$UserListLoadedImpl implements UserListLoaded {
  const _$UserListLoadedImpl({required final List<User> users})
      : _users = users;

  final List<User> _users;
  @override
  List<User> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  String toString() {
    return 'UserListState.loaded(users: $users)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserListLoadedImpl &&
            const DeepCollectionEquality().equals(other._users, _users));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_users));

  /// Create a copy of UserListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserListLoadedImplCopyWith<_$UserListLoadedImpl> get copyWith =>
      __$$UserListLoadedImplCopyWithImpl<_$UserListLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<User> users) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(users);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<User> users)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(users);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<User> users)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(users);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserListInitial value) initial,
    required TResult Function(UserListLoading value) loading,
    required TResult Function(UserListLoaded value) loaded,
    required TResult Function(UserListError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserListInitial value)? initial,
    TResult? Function(UserListLoading value)? loading,
    TResult? Function(UserListLoaded value)? loaded,
    TResult? Function(UserListError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserListInitial value)? initial,
    TResult Function(UserListLoading value)? loading,
    TResult Function(UserListLoaded value)? loaded,
    TResult Function(UserListError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class UserListLoaded implements UserListState {
  const factory UserListLoaded({required final List<User> users}) =
      _$UserListLoadedImpl;

  List<User> get users;

  /// Create a copy of UserListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserListLoadedImplCopyWith<_$UserListLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserListErrorImplCopyWith<$Res> {
  factory _$$UserListErrorImplCopyWith(
          _$UserListErrorImpl value, $Res Function(_$UserListErrorImpl) then) =
      __$$UserListErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$UserListErrorImplCopyWithImpl<$Res>
    extends _$UserListStateCopyWithImpl<$Res, _$UserListErrorImpl>
    implements _$$UserListErrorImplCopyWith<$Res> {
  __$$UserListErrorImplCopyWithImpl(
      _$UserListErrorImpl _value, $Res Function(_$UserListErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$UserListErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserListErrorImpl implements UserListError {
  const _$UserListErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'UserListState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserListErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of UserListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserListErrorImplCopyWith<_$UserListErrorImpl> get copyWith =>
      __$$UserListErrorImplCopyWithImpl<_$UserListErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<User> users) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<User> users)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<User> users)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserListInitial value) initial,
    required TResult Function(UserListLoading value) loading,
    required TResult Function(UserListLoaded value) loaded,
    required TResult Function(UserListError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserListInitial value)? initial,
    TResult? Function(UserListLoading value)? loading,
    TResult? Function(UserListLoaded value)? loaded,
    TResult? Function(UserListError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserListInitial value)? initial,
    TResult Function(UserListLoading value)? loading,
    TResult Function(UserListLoaded value)? loaded,
    TResult Function(UserListError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UserListError implements UserListState {
  const factory UserListError({required final String message}) =
      _$UserListErrorImpl;

  String get message;

  /// Create a copy of UserListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserListErrorImplCopyWith<_$UserListErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
