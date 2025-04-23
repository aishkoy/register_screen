import 'package:flutter/material.dart';

import 'AppButtons.dart';
import 'AppInputs.dart';
import 'AppTextStyles.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool _obscureText = true;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _emailController.text = 'Loremipsum@gmail.com';
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 70),

                const Text('Sign In', style: AppTextStyles.headingStyle),
                const SizedBox(height: 60),

                const Text('EMAIL OR PHONE', style: AppTextStyles.robotoLabelStyle),
                const SizedBox(height: 8),
                AppInputs.emailTextField(_emailController),
                const SizedBox(height: 24),

                const Text('PASSWORD', style: AppTextStyles.imprimaLabelStyle),
                const SizedBox(height: 8),
                AppInputs.passwordTextField(
                    _passwordController,
                    _obscureText,
                    _togglePasswordVisibility
                ),

                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      minimumSize: Size.zero,
                      padding: const EdgeInsets.all(8),
                    ),
                    child: const Text(
                      'Forgot password?',
                      style: AppTextStyles.interLinkStyle,
                    ),
                  ),
                ),
                const SizedBox(height: 24),

                AppButtons.primaryButton(
                  text: 'Log In',
                  onPressed: () {},
                ),

                const Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 24.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Divider(
                            color: Colors.grey,
                            thickness: 0.5,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          child: Text(
                            'OR',
                            style: AppTextStyles.interDividerStyle,
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            color: Colors.grey,
                            thickness: 0.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                AppButtons.googleButton(() {}),
                const SizedBox(height: 16),

                AppButtons.facebookButton(() {}),
                const SizedBox(height: 32),

                // Sign up link
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don't Have an account yet?",
                      style: AppTextStyles.interLinkStyle,
                    ),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        minimumSize: Size.zero,
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                      ),
                      child: const Text(
                        'SIGN UP',
                        style: AppTextStyles.interSignUpStyle,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}