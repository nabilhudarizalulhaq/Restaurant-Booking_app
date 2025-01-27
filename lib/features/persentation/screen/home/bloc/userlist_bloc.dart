import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:restaurant_booking_app/features/datasource/user_datasource.dart';
import 'package:restaurant_booking_app/features/models/user_list.dart';

part 'userlist_event.dart';
part 'userlist_state.dart';
part 'userlist_bloc.freezed.dart';

class UserlistBloc extends Bloc<UserlistEvent, UserlistState> {
  final RemoteDataSource remoteDataSource;

  UserlistBloc({required this.remoteDataSource})
      : super(const UserlistState.initial()) {
    on<UserlistEvent>((event, emit) async {
      await event.map(
        fetchUserList: (e) async {
          emit(const UserlistState.loading());
          try {
            final userlist = await remoteDataSource.fetchUserList();
            emit(UserlistState.loaded(userlist));
          } catch (e) {
            emit(UserlistState.error(e.toString()));
          }
        },
      );
    });
  }
}
