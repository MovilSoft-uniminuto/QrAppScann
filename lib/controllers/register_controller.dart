import 'package:flutter/material.dart';

class RegisterController {

  final formKey = GlobalKey<FormState>();
  
  final correoController = TextEditingController();
  
  final contrasenaController = TextEditingController();
  
  final confirmarController = TextEditingController();

  bool oculto = true;

  void toggleOculto() => oculto = !oculto;

  bool validate() => formKey.currentState?.validate() ?? false;

  Future<bool> register() async {
  
    // Implementa la lógica real de registro aquí (API, validaciones adicionales, etc.).
  
    await Future.delayed(const Duration(milliseconds: 400));
  
    return true;
  
  }
  void dispose() {
  
    correoController.dispose();
  
    contrasenaController.dispose();
  
    confirmarController.dispose();
  
  }

}
