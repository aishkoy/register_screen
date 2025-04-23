import 'package:flutter/material.dart';

import 'AppTextStyles.dart';
class AppInputs {
  static InputDecoration textFieldDecoration({Widget? suffixIcon}) {
    return InputDecoration(
      contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 0),
      enabledBorder: const UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.grey),
      ),
      focusedBorder: const UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.blue),
      ),
      suffixIcon: suffixIcon,
    );
  }

  static Widget emailTextField(TextEditingController controller) {
    return TextField(
      controller: controller,
      decoration: textFieldDecoration(),
      style: AppTextStyles.interInputStyle,
    );
  }

  static Widget passwordTextField(
    TextEditingController controller,
    bool obscureText,
    VoidCallback onToggle,
  ) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: '••••••',
        suffixIcon: IconButton(
          icon: Icon(
            obscureText ? Icons.visibility_off : Icons.visibility,
            color: Colors.grey,
          ),
          onPressed: onToggle,
        ),
      ),
      style: AppTextStyles.interInputStyle,
    );
  }
}