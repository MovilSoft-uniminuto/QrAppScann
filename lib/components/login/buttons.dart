import 'package:flutter/material.dart';

import '../../controllers/login_controller.dart';

class LoginButtons extends StatelessWidget {

  const LoginButtons({super.key, required this.controller, required this.onSuccess});

  final LoginController controller;

  final VoidCallback onSuccess;

  @override

  Widget build(BuildContext context) {

    final textTheme = Theme.of(context).textTheme;

    return Column(

      crossAxisAlignment: CrossAxisAlignment.stretch,

      children: [

        const SizedBox(height: 80),

        SizedBox(

          height: 52,

          child: ElevatedButton(

            style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28.0))),

            onPressed: () async {

              if (controller.validate()) {

                final ok = await controller.login();

                if (ok) onSuccess();

              }

            },
            child: Text(

              'Ingresar',

              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: textTheme.bodyLarge?.color),

            ),

          ),

        ),

        const SizedBox(height: 25),

        Row(

          children: [

            Expanded(child: Divider(thickness: 1, color: Theme.of(context).dividerColor)),

            Padding(

              padding: const EdgeInsets.symmetric(horizontal: 8.0),

              child: Text('o continuar con', style: TextStyle(fontSize: 12, color: textTheme.bodySmall?.color)),

            ),

            Expanded(child: Divider(thickness: 1, color: Theme.of(context).dividerColor)),

          ],

        ),

        const SizedBox(height: 25),

        SizedBox(

          height: 48,

          child: OutlinedButton(

            style: OutlinedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28.0)), side: BorderSide(color: Theme.of(context).dividerColor)),

            onPressed: () {},

            child: Row(

              mainAxisAlignment: MainAxisAlignment.center,

              children: [

                Container(

                  width: 24,

                  height: 24,

                  decoration: BoxDecoration(

                    shape: BoxShape.rectangle,

                    borderRadius: BorderRadius.circular(4),

                    color: Colors.transparent,

                  ),

                  child: Image.network(

                    'https://developers.google.com/identity/images/g-logo.png',

                    width: 20,

                    height: 20,

                    fit: BoxFit.contain,

                    errorBuilder: (_, __, ___) => const Icon(Icons.login, size: 20),

                  ),

                ),

                const SizedBox(width: 12),

                Text('Google', style: TextStyle(color: textTheme.bodyMedium?.color, fontWeight: FontWeight.w600)),

              ],

            ),

          ),

        ),

      ],

    );

  }

}
