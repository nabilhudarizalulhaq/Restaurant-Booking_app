part of 'userlist_bloc.dart';

@freezed
class UserlistState with _$UserlistState {
  const factory UserlistState.initial() = _Initial;
  const factory UserlistState.loading() = _Loading;
  const factory UserlistState.loaded(Userlist userlist) = _Loaded;
  const factory UserlistState.error(String message) = _Error;
}