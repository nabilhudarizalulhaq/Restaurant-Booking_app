import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:restaurant_booking_app/features/persentation/screen/login&register/login/bloc/auth_bloc.dart';
import 'package:restaurant_booking_app/features/persentation/screen/login&register/widget/button_login.dart';
import 'package:restaurant_booking_app/features/shared/thame.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Controllers for email and password input
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22),
            child: Column(
              children: [
                const SizedBox(height: 50),
                Center(
                  child: SvgPicture.asset(
                    'assets/svg/order_img.svg',
                    width: 200,
                    height: 200,
                  ),
                ),
                const SizedBox(height: 50),
                Text(
                  'Login',
                  style: greenTextStyle.copyWith(
                    fontSize: 32,
                    fontWeight: bold,
                  ),
                ),
                const SizedBox(height: 50),
                // Email Field
                TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(
                    hintText: 'Email',
                    hintStyle: const TextStyle(
                      color: Colors.grey,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                // Password Field
                TextFormField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle: const TextStyle(
                      color: Colors.grey,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text(
                      'Forgot Password?',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                // BlocConsumer for managing AuthBloc
                BlocConsumer<AuthBloc, AuthState>(
                  listener: (context, state) {
                    state.maybeWhen(
                      success: (auth) {
                        Navigator.pushNamedAndRemoveUntil(
                            context, '/home', (route) => false);
                      },
                      failure: (error) {
                        // Show error message
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            backgroundColor: secondaryColor,
                            content: Center(
                              child: Text(
                                'email atau password salah',
                                style: redTextStyle.copyWith(
                                  fontSize: 16,
                                  fontWeight: bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        );
                      },
                      orElse: () {},
                    );
                  },
                  builder: (context, state) {
                    return state.maybeWhen(
                      loading: () => const Center(
                        child: CircularProgressIndicator(),
                      ),
                      orElse: () => buttonLogin(
                        text: 'Login',
                        onPressed: () {
                          final email = emailController.text.trim();
                          final password = passwordController.text.trim();

                          if (email.isNotEmpty && password.isNotEmpty) {
                            // Dispatch login event
                            context.read<AuthBloc>().add(
                                  AuthEvent.login(
                                    email: email,
                                    password: password,
                                  ),
                                );
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                backgroundColor: secondaryColor,
                                content: Center(
                                  child: Text(
                                    'field tidak boleh kosng',
                                    style: redTextStyle.copyWith(
                                      fontSize: 16,
                                      fontWeight: bold,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            );
                          }
                        },
                      ),
                    );
                  },
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Don\'t have an account?',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/register');
                      },
                      child: const Text(
                        'Register',
                        style: TextStyle(
                          color: Colors.green,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
