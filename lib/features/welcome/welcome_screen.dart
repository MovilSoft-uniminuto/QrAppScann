import 'package:flutter/material.dart';
import 'package:qr_app_scann/features/welcome/widgets/welcome_actions.dart';
import 'package:qr_app_scann/features/welcome/widgets/welcome_background.dart';
import 'package:qr_app_scann/shared/widgets/theme_toggle_button.dart';

// Pantalla inicial de la app
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        fit: StackFit.expand,
        children: [
          const WelcomeBackground(),

          // Botón de tema arriba a la derecha
          Positioned(
            top: 0,
            right: 0,
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black26,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: const ThemeToggleButton(
                    forceIconColor: Colors.white,
                  ),
                ),
              ),
            ),
          ),

          // Contenido principal en la parte inferior
          const Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: WelcomeActions(),
          ),
        ],
      ),
    );
  }
}
