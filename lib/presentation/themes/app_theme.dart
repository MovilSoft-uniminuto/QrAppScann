import 'package:flutter/material.dart';


class AppTheme {

  // Colores de la paleta de colores de la aplicación

  static const Color primaryColor = Color(0xFF6A1B9A); 
  static const Color secondaryColor = Color(0xFF8E24AA);

  static const LinearGradient bacgkgroundGradient = LinearGradient(
    colors: [
      primaryColor,
      secondaryColor,
    ],

    // Cambia la dirección del degradado según tus preferencias
    // Puedes usar Alignment.topLeft, Alignment.topRight, etc.
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  // Estilo de texto para el logo 
  static const TextStyle logoTextStyle = TextStyle(
    fontSize: 48,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

}





