import 'package:flutter/material.dart';
import 'package:forms/widgets/widgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  static String route = '/login';

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
        body: AuthBackground(
            child: SafeArea(
      child: SingleChildScrollView(
          child: Column(
        children: [
          SizedBox(height: size.height * 0.2),
          CardContainer(
            child: Column(
              children: [
                const SizedBox(height: 24),
                Text(
                  'Login',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(height: 40),
                const LoginForm(),
              ],
            ),
          ),
          const SizedBox(height: 40),
          const Text(
            'Crear una cuenta nueva',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 40),
        ],
      )),
    )));
  }
}
