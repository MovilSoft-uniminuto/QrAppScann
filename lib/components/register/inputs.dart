import 'package:flutter/material.dart';

import '../../controllers/register_controller.dart';

class RegisterInputs extends StatelessWidget {

  const RegisterInputs({super.key, required this.controller});

  final RegisterController controller;

  @override

  Widget build(BuildContext context) {

  final inputTheme = Theme.of(context).inputDecorationTheme;

    return Column(

      crossAxisAlignment: CrossAxisAlignment.stretch,

      children: [

        TextFormField(

          controller: controller.correoController,

          keyboardType: TextInputType.emailAddress,

          decoration: InputDecoration(

            filled: inputTheme.filled,

            fillColor: inputTheme.fillColor,

            prefixIcon: const Icon(Icons.email_outlined),

            hintText: 'Correo',

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

            decoration: InputDecoration(

              filled: inputTheme.filled,

              fillColor: inputTheme.fillColor,

              prefixIcon: const Icon(Icons.lock_outline),

              hintText: 'Contraseña',

              contentPadding: inputTheme.contentPadding,

              border: inputTheme.border,

              suffixIcon: IconButton(icon: Icon(controller.oculto ? Icons.visibility_off : Icons.visibility), onPressed: () { controller.toggleOculto(); setState(() {}); }),

            ),

            validator: (value) {

              if (value == null || value.isEmpty) return 'Por favor ingresa contraseña';

              if (value.length < 6) return 'La contraseña es demasiado corta';

              return null;

            },

          );

        }),

        const SizedBox(height: 14),

        StatefulBuilder(builder: (context, setState) {

          return TextFormField(

            controller: controller.confirmarController,

            obscureText: controller.oculto,

            decoration: InputDecoration(

              filled: inputTheme.filled,

              fillColor: inputTheme.fillColor,

              prefixIcon: const Icon(Icons.lock_outline),

              hintText: 'Confirmar contraseña',

              contentPadding: inputTheme.contentPadding,
              
              border: inputTheme.border,
              
              suffixIcon: IconButton(icon: Icon(controller.oculto ? Icons.visibility_off : Icons.visibility), onPressed: () { controller.toggleOculto(); setState(() {}); }),
              
            ),
            
            validator: (value) {

              if (value == null || value.isEmpty) return 'Por favor confirma contraseña';
              
              if (value != controller.contrasenaController.text) return 'Las contraseñas no coinciden';
            
              return null;
            },
            
          );
          
        }),

      ],
    );

  }
  
}
