import 'package:flutter/material.dart';
import 'package:restaurant_booking_app/features/shared/thame.dart';

Widget buttonLogin({required String text, required Function() onPressed}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 59),
    child: GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 25,
          vertical: 16,
        ),
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          color: secondaryColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Text(
            'Login',
            style: greenTextStyle.copyWith(
              fontSize: 14,
              fontWeight: bold,
            ),
          ),
        ),
      ),
    ),
  );
}
