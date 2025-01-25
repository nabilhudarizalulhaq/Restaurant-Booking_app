import 'package:bloc/bloc.dart';
import 'package:restaurant_booking_app/features/datasource/user_datasource.dart';
import 'package:restaurant_booking_app/features/persentation/screen/home/bloc/user_list_event.dart';
import 'package:restaurant_booking_app/features/persentation/screen/home/bloc/user_list_state.dart';

class UserListBloc extends Bloc<UserListEvent, UserListState> {
  final UserRepository userRepository;

  UserListBloc({required this.userRepository})
      : super(const UserListState.initial());

  Stream<UserListState> mapEventToState(UserListEvent event) async* {
    yield* event.map(
      fetchUserList: _fetchUserList,
    );
  }

  Stream<UserListState> _fetchUserList(FetchUserList event) async* {
    yield const UserListState.loading();
    try {
      final users = await userRepository.fetchUsers();
      yield UserListState.loaded(users: users);
    } catch (e) {
      yield UserListState.error(message: e.toString());
    }
  }
}
