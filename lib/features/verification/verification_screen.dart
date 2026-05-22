import 'package:flutter/material.dart';
import 'package:qr_app_scann/main.dart';
import 'package:qr_app_scann/features/verification/widgets/otp_card.dart';
import 'package:qr_app_scann/shared/widgets/theme_toggle_button.dart';

// Pantalla para verificar el correo tras el registro
class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bodyTextColor = Theme.of(context).textTheme.bodyLarge?.color;
    final subtleTextColor = Theme.of(context).textTheme.bodySmall?.color;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: const [
          ThemeToggleButton(),
          SizedBox(width: 8),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 28.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 12),

              Text(
                'Verificación\nde Cuenta',
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.w800,
                  color: bodyTextColor,
                  height: 1.1,
                ),
              ),
              const SizedBox(height: 52),

              const OtpCard(email: 'alumno@uniminuto.edu.co'),
              const SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '¿Quieres cambiar tu correo? ',
                    style: TextStyle(fontSize: 12, color: subtleTextColor),
                  ),
                  GestureDetector(
                    onTap: () {
                      // TODO: cambiar email
                    },
                    child: Text(
                      'Cámbialo aquí',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: bodyTextColor,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 32),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                      context,
                      MyApp.routeWelcome,
                      (route) => false,
                    );
                  },
                  child: const Text('Confirmar'),
                ),
              ),
              const SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '¿Ya tienes una cuenta? ',
                    style: TextStyle(fontSize: 13, color: subtleTextColor),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamedAndRemoveUntil(
                        context,
                        MyApp.routeLogin,
                        (route) => false,
                      );
                    },
                    child: Text(
                      'Iniciar sesión',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                        color: bodyTextColor,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}
