import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:restaurant_booking_app/features/models/home/user_list.dart';

part 'user_list_state.freezed.dart';

@freezed
class UserListState with _$UserListState {
  const factory UserListState.initial() = UserListInitial;
  const factory UserListState.loading() = UserListLoading;
  const factory UserListState.loaded({required List<User> users}) =
      UserListLoaded;
  const factory UserListState.error({required String message}) = UserListError;
}
