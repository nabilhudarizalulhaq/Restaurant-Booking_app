import 'package:bloc/bloc.dart';
import 'package:restaurant_booking_app/features/datasource/user_datasource.dart';
import 'package:equatable/equatable.dart';
import 'package:restaurant_booking_app/features/models/list_user.dart';


abstract class UserListEvent extends Equatable {
  const UserListEvent();

  @override
  List<Object?> get props => [];
}

class FetchUserList extends UserListEvent {}

abstract class UserListState extends Equatable {
  const UserListState();

  @override
  List<Object?> get props => [];
}

class UserListInitial extends UserListState {}

class UserListLoading extends UserListState {}

class UserListLoaded extends UserListState {
  final List<User> users;

  const UserListLoaded({required this.users});

  @override
  List<Object?> get props => [users];
}

class UserListError extends UserListState {
  final String message;

  const UserListError({required this.message});

  @override
  List<Object?> get props => [message];
}

class UserListBloc extends Bloc<UserListEvent, UserListState> {
  final UserRepository userRepository;

  UserListBloc({required this.userRepository}) : super(UserListInitial());

  Stream<UserListState> mapEventToState(UserListEvent event) async* {
    if (event is FetchUserList) {
      yield UserListLoading();
      try {
        final users = await userRepository.fetchUsers();
        yield UserListLoaded(users: users); 
      } catch (e) {
        yield UserListError(message: e.toString());
      }
    }
  }
}

