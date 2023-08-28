import 'package:flutter/material.dart';

import 'components/body.dart';

class LoginSuccessScreen extends StatelessWidget {
  static String routeName = "/login_success";
  const LoginSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const SizedBox(), // 기본 아이콘을 없앰
        title: const Text(
          "Login Success",
        ),
      ),
      body: const Body(),
    );
  }
}
