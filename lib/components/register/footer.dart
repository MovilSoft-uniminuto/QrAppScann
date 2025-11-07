import 'package:flutter/gestures.dart';

import 'package:flutter/material.dart';

class RegisterFooter extends StatelessWidget {

  const RegisterFooter({super.key});

  @override

  Widget build(BuildContext context) {

    return Center(

      child: RichText(

        text: TextSpan(

          text: '¿Ya tienes una cuenta? ',

          style: TextStyle(color: Theme.of(context).textTheme.bodyLarge?.color ?? Colors.black87),

          children: [

            TextSpan(

              text: 'Iniciar sesión',

              style: const TextStyle(color: Colors.blueAccent, fontWeight: FontWeight.w600),

              recognizer: TapGestureRecognizer()..onTap = () => Navigator.pop(context),

            ),
          
          ],

        ),

      ),
    
    );

  }
  
}


