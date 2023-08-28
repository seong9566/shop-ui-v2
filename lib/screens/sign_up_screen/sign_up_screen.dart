import 'package:flutter/material.dart';
import 'package:shop_app_ui/screens/sign_up_screen/components/body.dart';

class SignUpScreen extends StatelessWidget {
  static String routeName = "/sign_up`";
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign Up"),
      ),
      body: const Body(),
    );
  }
}
