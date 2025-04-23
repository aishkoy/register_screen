import 'package:flutter/material.dart';

import 'AppTextStyles.dart';

class AppButtons {
  static ButtonStyle socialButtonStyle() {
    return OutlinedButton.styleFrom(
      side: const BorderSide(color: Colors.grey),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }

  static Widget primaryButton({required String text, required VoidCallback onPressed}) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF2D4D5D),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          elevation: 0,
        ),
        child: Text(text, style: AppTextStyles.interButtonStyle),
      ),
    );
  }

  static Widget googleButton(VoidCallback onPressed) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: OutlinedButton.icon(
        onPressed: onPressed,
        style: socialButtonStyle(),
        icon: Image.asset(
          'assets/images/google_logo.png',
          height: 24,
        ),
        label: const Text(
          'Continue With Google',
          style: AppTextStyles.imprimaButtonStyle,
        ),
      ),
    );
  }

  static Widget facebookButton(VoidCallback onPressed) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: OutlinedButton.icon(
        onPressed: onPressed,
        style: socialButtonStyle(),
        icon: Icon(
          Icons.facebook,
          color: Colors.blue[900],
          size: 24,
        ),
        label: const Text(
          'Continue With Facebook',
          style: AppTextStyles.imprimaButtonStyle,
        ),
      ),
    );
  }
}