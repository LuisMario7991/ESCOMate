// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:provider/provider.dart';
import 'package:proyecto/info/provider.dart';
import '../info/mysql.dart';
import './inicio.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    final loginProvider = Provider.of<LoginProvider>(context);
    return Scaffold(
        appBar: AppBar(
          title: const Text("Acceso"),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: FormBuilder(
              key: _formKey,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.person, size: 250),
                    const Text("Login",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.w800)),
                    const SizedBox(height: 15),
                    const Icon(Icons.power_settings_new,
                        size: 100, color: Colors.black54),
                    FormBuilderTextField(
                      name: "boleta",
                      decoration: const InputDecoration(
                          labelText: "Número de boleta",
                          icon: Icon(Icons.onetwothree, size: 50)),
                      validator: FormBuilderValidators.compose([
                        FormBuilderValidators.required(
                            errorText: "Falta tu número de boleta"),
                        FormBuilderValidators.integer(
                            errorText: "Deben ser solo digitos"),
                        FormBuilderValidators.equalLength(10,
                            errorText: "Deben ser 10 digitos exactamente"),
                      ]),
                    ),
                    const SizedBox(height: 15),
                    FormBuilderTextField(
                      name: "curp",
                      decoration: const InputDecoration(
                          labelText: "curp",
                          icon: Icon(Icons.alternate_email, size: 50)),
                      validator: FormBuilderValidators.compose([
                        FormBuilderValidators.match(
                          RegExp(r'^[A-Z]{4}[0-9]{6}[A-Z]{6}[0-9]{2}$'),
                          errorText: 'CURP no valido',
                        ),
                        FormBuilderValidators.required(
                            errorText: "Falta tu curp"),
                        FormBuilderValidators.equalLength(18,
                            errorText: "Deben ser 18 digitos exactamente"),
                      ]),
                    ),
                    const SizedBox(height: 25),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            minimumSize: const Size.fromHeight(50),
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.zero)),
                        onPressed: () async {
                          if (_formKey.currentState!.saveAndValidate()) {
                            var db = Mysql();
                            var respuesta = await db
                                .checkLogin(_formKey.currentState!.value);
                            if (respuesta.startsWith("Bienvenido")) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text(respuesta)));
                              loginProvider.login();
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const PageOne()));
                              _formKey.currentState?.reset();
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text(respuesta)));
                            }
                          }
                        },
                        child: const Text("Entrar"))
                  ],
                ),
              )),
        ));
  }
}
