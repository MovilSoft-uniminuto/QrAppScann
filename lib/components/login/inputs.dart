import 'package:flutter/material.dart';

import '../../controllers/login_controller.dart';

class LoginInputs extends StatelessWidget {

  const LoginInputs({super.key, required this.controller});

  final LoginController controller;

  @override

  Widget build(BuildContext context) {

    final textTheme = Theme.of(context).textTheme;

    final inputTheme = Theme.of(context).inputDecorationTheme;

    return Column(

      crossAxisAlignment: CrossAxisAlignment.stretch,

      children: [

        TextFormField(

          controller: controller.correoController,

          keyboardType: TextInputType.emailAddress,

          style: TextStyle(color: textTheme.bodyMedium?.color),

          cursorColor: Theme.of(context).textSelectionTheme.cursorColor,

          decoration: InputDecoration(

            filled: inputTheme.filled,

            fillColor: inputTheme.fillColor,

            hintText: 'Correo',

            hintStyle: inputTheme.hintStyle,

            prefixIcon: const Icon(Icons.email_outlined),

            contentPadding: inputTheme.contentPadding,

            border: inputTheme.border,

          ),

          validator: (value) {

            if (value == null || value.isEmpty) return 'Por favor ingresa correo';

            if (!RegExp(r"^[^@\s]+@[^@\s]+\.[^@\s]+$").hasMatch(value)) return 'Ingresa un correo válido';

            return null;

          },

        ),

        const SizedBox(height: 14),

        StatefulBuilder(builder: (context, setState) {

          return TextFormField(

            controller: controller.contrasenaController,

            obscureText: controller.oculto,

            style: TextStyle(color: textTheme.bodyMedium?.color),

            cursorColor: Theme.of(context).textSelectionTheme.cursorColor,

            decoration: InputDecoration(

              filled: inputTheme.filled,

              fillColor: inputTheme.fillColor,

              hintText: 'Contraseña',

              hintStyle: inputTheme.hintStyle,

              prefixIcon: const Icon(Icons.lock_outline),

              suffixIcon: IconButton(

                icon: Icon(controller.oculto ? Icons.visibility_off : Icons.visibility),

                onPressed: () {

                  controller.toggleOculto();

                  setState(() {});

                },

              ),

              contentPadding: inputTheme.contentPadding,

              border: inputTheme.border,

            ),

            validator: (value) {

              if (value == null || value.isEmpty) return 'Por favor ingresa contraseña';

              if (value.length < 6) return 'La contraseña es demasiado corta';

              return null;

            },

          );

        }),

        const SizedBox(height: 8),

        Align(

          alignment: Alignment.centerRight,

          child: Padding(

            padding: const EdgeInsets.only(right: 6.0),

            child: InkWell(

              onTap: () {},

              child: Text(

                '¿Olvidaste tu contraseña?',

                style: TextStyle(fontSize: 12, color: textTheme.bodySmall?.color),

              ),

            ),

          ),

        ),

      ],

    );

  }

}
