import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_app_scann/main.dart';
import 'package:qr_app_scann/const/theme/theme_provider.dart';

// Parte inferior de la pantalla de bienvenida: título y botones de acceso
class WelcomeActions extends StatelessWidget {
  const WelcomeActions({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = context.watch<ThemeProvider>().isDark;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Controla tu acceso',
            style: TextStyle(
              color: Colors.white,
              fontSize: 32,
              fontWeight: FontWeight.w800,
              height: 1.15,
            ),
          ),
          const SizedBox(height: 12),
          const Text(
            'Registra tu ingreso al gimnasio y la biblioteca de la universidad de forma rápida y segura.',
            style: TextStyle(
              color: Color(0xCCFFFFFF),
              fontSize: 14,
              height: 1.5,
            ),
          ),
          const SizedBox(height: 36),
          SizedBox(
            width: double.infinity,
            height: 56,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, MyApp.routeLogin);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(28)),
                ),
                textStyle: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              child: const Text('Iniciar sesión'),
            ),
          ),
          const SizedBox(height: 14),
          SizedBox(
            width: double.infinity,
            height: 56,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, MyApp.routeRegister);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: isDark
                    ? const Color(0xFF6C69EA)
                    : const Color(0xFF101010),
                foregroundColor: Colors.white,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(28)),
                ),
                textStyle: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              child: const Text('Registrarse'),
            ),
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
