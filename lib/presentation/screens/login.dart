import 'package:flutter/material.dart';

import '../../controllers/login_controller.dart';

import '../../components/login/header.dart';

import '../../components/login/inputs.dart';

import '../../components/login/buttons.dart';

import '../../components/login/footer.dart';

class LoginPage extends StatefulWidget {

  const LoginPage({super.key});

  @override

  State<LoginPage> createState() => _LoginPageState();

}

class _LoginPageState extends State<LoginPage> {

  final controller = LoginController();

  @override

  void dispose() {

    controller.dispose();

    super.dispose();

  }



  void _onSuccess() {

    // Navegar a la siguiente pantalla o mostrar mensaje

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

              const LoginHeader(title: 'Ingreso'),

              const SizedBox(height: 120),

              Center(

                child: ConstrainedBox(

                  constraints: const BoxConstraints(maxWidth: 520),

                  child: Form(

                    key: controller.formKey,

                    child: Column(

                      crossAxisAlignment: CrossAxisAlignment.stretch,

                      children: [

                        LoginInputs(controller: controller),

                        LoginButtons(controller: controller, onSuccess: _onSuccess),

                        const SizedBox(height: 18),

                        const LoginFooter(),

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
