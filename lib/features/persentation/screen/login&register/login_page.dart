import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:restaurant_booking_app/features/persentation/screen/login&register/widget/button_login.dart';
import 'package:restaurant_booking_app/features/shared/thame.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22),
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Center(
                  child: SvgPicture.asset(
                    'assets/svg/order_img.svg',
                    width: 200,
                    height: 200,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Text(
                  'Login',
                  style: greenTextStyle.copyWith(
                    fontSize: 32,
                    fontWeight: bold,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Email',
                    // label: Text('Email'),
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Password',
                    // label: Text('Password'),
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot Password?',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                buttonLogin(
                  text: 'Login',
                  onPressed: () {
                    Navigator.pushNamed(context, '/home');
                  },
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an account?',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/register');
                      },
                      child: Text(
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
