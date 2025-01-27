import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant_booking_app/features/datasource/remote_datasource.dart';
import 'package:restaurant_booking_app/features/persentation/screen/home/home.dart';
import 'package:restaurant_booking_app/features/persentation/screen/login&register/bloc/auth_bloc.dart';
import 'package:restaurant_booking_app/features/persentation/screen/login&register/onlogin.dart';
import 'package:restaurant_booking_app/features/persentation/screen/login&register/login_page.dart';
import 'package:restaurant_booking_app/features/persentation/screen/login&register/regis_page.dart';
import 'package:restaurant_booking_app/features/persentation/screen/onboading/onboarding.dart';
import 'package:restaurant_booking_app/features/persentation/screen/splash/splash.dart';

void main() {
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              AuthBloc(AuthRemoteDataSource('https://reqres.in')),
        ),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Restaurant App',
      routes: {
        '/': (context) => const SplashPage(),
        '/onboarding': (context) => const OnboardingPage(),
        '/onlogin': (context) => const LoginAndRegisterPage(),
        '/login': (context) => const LoginPage(),
        '/register': (context) => const RegisPage(),
        '/home': (context) => const Home(),
      },
    );
  }
}
