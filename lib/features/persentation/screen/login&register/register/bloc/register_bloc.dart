import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:restaurant_booking_app/features/models/register/register_model.dart';

part 'register_event.dart';
part 'register_state.dart';
part 'register_bloc.freezed.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc() : super(const RegisterState.initial());

  Stream<RegisterState> mapEventToState(RegisterEvent event) async* {
    yield* event.map(
      submit: (e) async* {
        yield const RegisterState.loading();
        try {
          // Proses pendaftaran, misalnya dengan melakukan HTTP request untuk register
          final response = await _registerUser(e.registerRequest);
          yield RegisterState.success(response);
        } catch (error) {
          yield RegisterState.failure(error.toString());
        }
      },
    );
  }

  Future<RegisterResponse> _registerUser(RegisterRequest request) async {
    await Future.delayed(const Duration(seconds: 2)); // Simulasi loading
    return RegisterResponse(token: 'fake_token_123');
  }
}
