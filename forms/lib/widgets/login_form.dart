import 'package:flutter/material.dart';
import 'package:forms/widgets/form/form.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(children: [
      const TextInput(
        label: 'Correo Electrónico',
        keyboardType: TextInputType.emailAddress,
        hint: 'john.doe@gmail.com',
        prefixIcon: Icons.alternate_email,
      ),
      const SizedBox(height: 24),
      const TextInput(
        label: 'Contraseña',
        keyboardType: TextInputType.text,
        hint: '*********',
        prefixIcon: Icons.lock_outline,
        obscureText: true,
      ),
      const SizedBox(height: 24),
      MaterialButton(
        onPressed: () {},
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        disabledColor: Colors.grey,
        elevation: 0,
        color: Colors.deepPurple,
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
          child: Text('Ingresar', style: TextStyle(color: Colors.white)),
        ),
      )
    ]));
  }
}
