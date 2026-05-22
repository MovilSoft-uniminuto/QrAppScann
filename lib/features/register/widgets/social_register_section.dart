import 'package:flutter/material.dart';
import 'package:qr_app_scann/main.dart';
import 'package:qr_app_scann/shared/widgets/google_logo.dart';

// Sección de registro con Google y enlace al login
class SocialRegisterSection extends StatelessWidget {
  const SocialRegisterSection({super.key});

  @override
  Widget build(BuildContext context) {
    final textColor = Theme.of(context).textTheme.bodySmall?.color;

    return Column(
      children: [
        Row(
          children: [
            Expanded(child: Divider(color: Theme.of(context).dividerColor)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Text(
                'o continuar con',
                style: TextStyle(fontSize: 13, color: textColor),
              ),
            ),
            Expanded(child: Divider(color: Theme.of(context).dividerColor)),
          ],
        ),
        const SizedBox(height: 20),

        SizedBox(
          width: double.infinity,
          child: OutlinedButton(
            onPressed: () {
              // TODO: registro con Google
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                GoogleLogo(size: 20),
                SizedBox(width: 10),
                Text('Google'),
              ],
            ),
          ),
        ),
        const SizedBox(height: 28),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '¿Ya tienes una cuenta? ',
              style: TextStyle(fontSize: 13, color: textColor),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, MyApp.routeLogin);
              },
              child: Text(
                'Iniciar sesión',
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w700,
                  color: Theme.of(context).textTheme.bodyLarge?.color,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
