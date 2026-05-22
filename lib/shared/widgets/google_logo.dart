import 'package:flutter/material.dart';

// Logo oficial de Google cargado desde assets
class GoogleLogo extends StatelessWidget {
  final double size;
  const GoogleLogo({super.key, this.size = 20});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/google.png',
      width: size,
      height: size,
    );
  }
}
