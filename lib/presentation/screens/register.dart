import 'package:flutter/material.dart';

import '../../controllers/register_controller.dart';

import '../../components/register/header.dart';

import '../../components/register/inputs.dart';

import '../../components/register/buttons.dart';

import '../../components/register/footer.dart';

class Register extends StatefulWidget {

  const Register({super.key});

  @override

  State<Register> createState() => _RegisterState();

}

class _RegisterState extends State<Register> {

  final controller = RegisterController();

  @override

  void dispose() {

    controller.dispose();

    super.dispose();

  }

  void _onSuccess() {
    // navegar o confirmar registro
  }

  @override

  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: Theme.of(context).scaffoldBackgroundColor,

      body: SafeArea(

        child: SingleChildScrollView(

          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 28.0),

          child: Column(

            crossAxisAlignment: CrossAxisAlignment.stretch,

            children: [

              const SizedBox(height: 10),

              const RegisterHeader(title: 'Registro'),

              const SizedBox(height: 90),

              Center(

                child: ConstrainedBox(

                  constraints: const BoxConstraints(maxWidth: 520),

                  child: Form(
                    
                    key: controller.formKey,
                    
                    child: Column(

                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      
                      children: [
                        
                        RegisterInputs(controller: controller),
                        
                        RegisterButtons(controller: controller, onSuccess: _onSuccess),
                        
                        const SizedBox(height: 18),
                        
                        const RegisterFooter(),
                        
                      ],

                    ),

                  ),

                ),

              ),
              
              const SizedBox(height: 30),
            ],

          ),

        ),

      ),

    );

  }
  
}
