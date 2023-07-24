import 'package:flutter/material.dart';
import 'package:forms/providers/login_form_provider.dart';
import 'package:forms/screens/home_screen.dart';
import 'package:forms/widgets/form/form.dart';
import 'package:provider/provider.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    final loginForm = Provider.of<LoginFormProvider>(context);

    return Form(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        key: loginForm.formKey,
        child: Column(children: [
          TextInput(
            label: 'Correo Electrónico',
            keyboardType: TextInputType.emailAddress,
            hint: 'john.doe@gmail.com',
            prefixIcon: Icons.alternate_email,
            onChanged: (value) => loginForm.email = value,
            validator: (value) {
              String pattern =
                  r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
              RegExp regExp = RegExp(pattern);
              return regExp.hasMatch(value ?? '')
                  ? null
                  : 'Correo electrónico inválido';
            },
          ),
          const SizedBox(height: 24),
          TextInput(
              label: 'Contraseña',
              keyboardType: TextInputType.text,
              hint: '*********',
              prefixIcon: Icons.lock_outline,
              obscureText: true,
              onChanged: (value) => loginForm.password = value,
              validator: (value) => value != null && value.length >= 6
                  ? null
                  : 'La contraseña debe ser mayor a 6 caracteres'),
          const SizedBox(height: 24),
          MaterialButton(
            onPressed: loginForm.isLoading
                ? null
                : () {
                    FocusScope.of(context).unfocus();

                    if (!loginForm.isValidForm()) return;

                    loginForm.isLoading = true;
                    Future.delayed(const Duration(seconds: 5));
                    loginForm.isLoading = false;
                    Navigator.pushReplacementNamed(context, HomeScreen.route);
                  },
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            disabledColor: Colors.grey,
            elevation: 0,
            color: Colors.deepPurple,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
              child: Text(loginForm.isLoading ? 'Cargando...' : 'Ingresar',
                  style: const TextStyle(color: Colors.white)),
            ),
          )
        ]));
  }
}
