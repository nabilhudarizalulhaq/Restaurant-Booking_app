part of 'userlist_bloc.dart';

@freezed
class UserlistEvent with _$UserlistEvent {
  const factory UserlistEvent.fetchUserList() = FetchUserList;
}