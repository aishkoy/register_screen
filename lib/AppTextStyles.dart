import 'package:flutter/material.dart';

class AppTextStyles {
  static const Color darkTeal = Color(0xFF2B4C59);

  static const Color gray = Color(0xFFA1A1A1);

  static const Color gold = Color(0xFFFCC21B);


  static const headingStyle = TextStyle(
    fontFamily: 'Imprima',
    fontSize: 32,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  static const imprimaLabelStyle = TextStyle(
    fontFamily: 'Imprima',
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: darkTeal,
  );

  static const imprimaButtonStyle = TextStyle(
    fontFamily: 'Imprima',
    fontSize: 16,
    color: Colors.black87,
  );

  static const robotoLabelStyle = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: darkTeal,
  );

  static const interInputStyle = TextStyle(
    fontFamily: 'Inter',
    fontSize: 16,
    color: gray
  );

  static const interLinkStyle = TextStyle(
    fontFamily: 'Inter',
    fontSize: 12,
    color: Colors.black87,
  );

  static const interButtonStyle = TextStyle(
    fontFamily: 'Inter',
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  static const interDividerStyle = TextStyle(
    fontFamily: 'Inter',
    fontSize: 14,
    color: Colors.black54,
  );

  static const interSignUpStyle = TextStyle(
    fontFamily: 'Inter',
    fontStyle: FontStyle.italic,
    fontSize: 14,
    fontWeight: FontWeight.bold,
    color: Colors.amber,
  );
}