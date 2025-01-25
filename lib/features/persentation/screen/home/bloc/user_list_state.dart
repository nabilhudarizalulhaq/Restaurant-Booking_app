import 'package:equatable/equatable.dart';
import 'package:restaurant_booking_app/features/models/home/user_list.dart';

abstract class UserListState extends Equatable {
  const UserListState();

  @override
  List<Object> get props => [];
}

class UserListInitial extends UserListState {}

class UserListLoading extends UserListState {}

class UserListLoaded extends UserListState {
  final List<User> users;

  const UserListLoaded({required this.users});

  @override
  List<Object> get props => [users];
}

class UserListError extends UserListState {
  final String message;

  const UserListError({required this.message});

  @override
  List<Object> get props => [message];
}
