import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:restaurant_booking_app/features/persentation/screen/login&register/widget/button_login.dart';
import 'package:restaurant_booking_app/features/persentation/screen/login&register/widget/button_regis.dart';

class LoginAndRegisterPage extends StatelessWidget {
  const LoginAndRegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: SvgPicture.asset(
              'assets/svg/order_img.svg',
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            'Welcome',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            'Before enjoying Foodmedia services\nPlease register first',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 50,
          ),
          buttonRegis(
              text: 'Regis',
              onPressed: () {
                Navigator.pushNamed(context, '/register');
              }),
          SizedBox(
            height: 16,
          ),
          buttonLogin(
            text: 'create account',
            onPressed: () {
              Navigator.pushNamed(context, '/login');
            },
          ),
          SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Text(
              'By logging in or registering, you have agreed to the Terms and \nConditions and Privacy Policy.',
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
