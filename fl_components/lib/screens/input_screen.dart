import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': '',
      'last_name': '',
      'email': '',
      'password': '',
      'role': '',
    };

    return Scaffold(
        appBar: AppBar(
          title: const Text('Input Screen'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Form(
              key: formKey,
              child: Wrap(
                crossAxisAlignment: WrapCrossAlignment.end,
                runSpacing: 16,
                children: [
                  CustomInputField(
                    labelText: 'Nombre',
                    placeholder: 'Pedro',
                    formProperty: 'first_name',
                    formValues: formValues,
                  ),
                  CustomInputField(
                      labelText: 'Apellido',
                      placeholder: 'Peréz',
                      formProperty: 'last_name',
                      formValues: formValues),
                  CustomInputField(
                      labelText: 'Correo',
                      placeholder: 'pedroperez@gmail.com',
                      keyboardType: TextInputType.emailAddress,
                      formProperty: 'email',
                      formValues: formValues),
                  CustomInputField(
                      labelText: 'Contraseña',
                      placeholder: '*********',
                      helperText: 'Minimo 8 caracteres',
                      counterText: '0/8',
                      obscureText: true,
                      formProperty: 'password',
                      formValues: formValues),
                  DropdownButtonFormField(
                      decoration: const InputDecoration(
                        labelText: 'Rol',
                        hintText: 'Seleccione un rol',
                      ),
                      items: const [
                        DropdownMenuItem(
                          value: '',
                          enabled: false,
                          child: Text('Seleccione un rol'),
                        ),
                        DropdownMenuItem(
                          value: 'admin',
                          child: Text('Administrador'),
                        ),
                        DropdownMenuItem(
                          value: 'user',
                          child: Text('Usuario'),
                        ),
                      ],
                      onChanged: (value) {
                        formValues['role'] = value.toString();
                      }),
                  ElevatedButton(
                      onPressed: () {
                        FocusScope.of(context).requestFocus(FocusNode());
                        if (!formKey.currentState!.validate()) return;
                        if (kDebugMode) {
                          print(formValues);
                        }
                      },
                      child: const SizedBox(
                        width: double.infinity,
                        child: Center(
                          child: Text('Guardar'),
                        ),
                      ))
                ],
              ),
            ),
          ),
        ));
  }
}
