import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:restaurant_booking_app/features/models/register/register_model.dart';
import 'package:restaurant_booking_app/features/persentation/screen/login&register/register/bloc/register_bloc.dart';
import 'package:restaurant_booking_app/features/shared/thame.dart';

class RegisPage extends StatelessWidget {
  const RegisPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterBloc(),
      child: Scaffold(
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
                    'Create Account',
                    style: greenTextStyle.copyWith(
                      fontSize: 32,
                      fontWeight: bold,
                    ),
                  ),
                  const SizedBox(height: 50),
                  // Form Input Fields
                  const _RegisterForm(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _RegisterForm extends StatefulWidget {
  const _RegisterForm();

  @override
  State<_RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<_RegisterForm> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocListener<RegisterBloc, RegisterState>(
      listener: (context, state) {
        state.when(
          initial: () {},
          loading: () {
            _showLoadingDialog(context);
          },
          success: (response) {
            Navigator.pop(context);
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content:
                    Text('Registration successful! Token: ${response.token}'),
              ),
            );
            Navigator.pushNamed(context, '/login');
          },
          failure: (error) {
            Navigator.pop(context);
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Registration failed: $error'),
              ),
            );
          },
        );
      },
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            // Full Name
            TextFormField(
              controller: _nameController,
              decoration: InputDecoration(
                hintText: 'Full Name',
                hintStyle: const TextStyle(color: Colors.grey),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Full Name is required';
                }
                return null;
              },
            ),
            const SizedBox(height: 16),
            // Email
            TextFormField(
              controller: _emailController,
              decoration: InputDecoration(
                hintText: 'Email',
                hintStyle: const TextStyle(color: Colors.grey),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Email is required';
                } else if (!RegExp(
                        r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$')
                    .hasMatch(value)) {
                  return 'Enter a valid email';
                }
                return null;
              },
            ),
            const SizedBox(height: 16),
            // Password
            TextFormField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Password',
                hintStyle: const TextStyle(color: Colors.grey),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Password is required';
                } else if (value.length < 6) {
                  return 'Password must be at least 6 characters';
                }
                return null;
              },
            ),
            const SizedBox(
              height: 50,
            ),
            BlocConsumer<RegisterBloc, RegisterState>(
              listener: (context, state) {
                state.when(
                  initial: () {},
                  loading: () {
                    _showLoadingDialog(context);
                  },
                  success: (response) {
                    Navigator.pop(context); // Close loading dialog
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                            'Registration successful! Token: ${response.token}'),
                      ),
                    );
                    // Navigate to login page after successful registration
                    Future.delayed(const Duration(seconds: 1), () {
                      Navigator.pushNamedAndRemoveUntil(
                          // ignore: use_build_context_synchronously
                          context,
                          '/home',
                          (route) => false);
                    });
                  },
                  failure: (error) {
                    Navigator.pop(context); // Close loading dialog
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Registration failed: $error'),
                      ),
                    );
                  },
                );
              },
              builder: (context, state) {
                return Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 16),
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: state.maybeWhen(
                    loading: () => const Center(
                      child: CircularProgressIndicator(
                        color: Colors.white,
                      ),
                    ),
                    orElse: () => TextButton(
                      onPressed: () {
                        if (_formKey.currentState?.validate() ?? false) {
                          final registerRequest = RegisterRequest(
                            email: _emailController.text,
                            password: _passwordController.text,
                          );
                          context
                              .read<RegisterBloc>()
                              .add(RegisterEvent.submit(registerRequest));
                        }
                      },
                      child: Text(
                        'Create Account',
                        style: whiteTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: bold,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Already have an account?',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  },
                  child: Text(
                    'Login',
                    style: greenTextStyle.copyWith(
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _showLoadingDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
