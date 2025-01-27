import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:restaurant_booking_app/features/datasource/remote_datasource.dart';
import 'package:restaurant_booking_app/features/models/login/model_login.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRemoteDataSource remoteDataSource;

  AuthBloc(this.remoteDataSource) : super(const AuthState.initial()) {
    on<AuthEvent>((event, emit) async {
      await event.map(
        login: (loginEvent) async {
          emit(const AuthState.loading());
          try {
            final token = await remoteDataSource.login(
              loginEvent.email,
              loginEvent.password,
            );
            emit(AuthState.success(AuthModel(token: token)));
          } catch (e) {
            emit(AuthState.failure(e.toString()));
          }
        },
      );
    });
  }
}
