import 'package:flutter/material.dart';

class LoginController {

  final formKey = GlobalKey<FormState>();

  final correoController = TextEditingController();

  final contrasenaController = TextEditingController();

  bool oculto = true;

  void toggleOculto() => oculto = !oculto;

  bool validate() => formKey.currentState?.validate() ?? false;

  Future<bool> login() async {
    
    await Future.delayed(const Duration(milliseconds: 400));

    return true;

  }

  void dispose() {

    correoController.dispose();

    contrasenaController.dispose();

  }
  
}
