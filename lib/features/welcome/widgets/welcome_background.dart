import 'package:flutter/material.dart';

// Fondo de la pantalla de bienvenida con overlay para mejorar la legibilidad
class WelcomeBackground extends StatelessWidget {
  const WelcomeBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          'assets/images/campus_bg.png',
          fit: BoxFit.cover,
        ),
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0x55000000),
                Color(0xAA000000),
              ],
              stops: [0.0, 1.0],
            ),
          ),
        ),
      ],
    );
  }
}
