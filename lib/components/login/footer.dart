import 'package:flutter/gestures.dart';

import 'package:flutter/material.dart';

import '../../screens/register.dart';

class LoginFooter extends StatelessWidget {

  const LoginFooter({super.key});

  @override

  Widget build(BuildContext context) {

    final textTheme = Theme.of(context).textTheme;

    return Center(

      child: RichText(

        text: TextSpan(

          text: '¿No tienes una cuenta? ',

          style: TextStyle(color: textTheme.bodyLarge?.color),

          children: [
            
            TextSpan(

              text: 'Regístrate',

              style: TextStyle(color: Theme.of(context).colorScheme.secondary, fontWeight: FontWeight.w600),

              recognizer: TapGestureRecognizer()

                ..onTap = () {

                  Navigator.push(context, MaterialPageRoute(builder: (_) => const Register()));

                },

            ),

          ],

        ),

      ),

    );

  }

}
