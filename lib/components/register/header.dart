import 'package:flutter/material.dart';

class RegisterHeader extends StatelessWidget {

  const RegisterHeader({super.key, required this.title});

  final String title;

  @override

  Widget build(BuildContext context) {

    final textTheme = Theme.of(context).textTheme;

    return Padding(

      padding: const EdgeInsets.only(left: 6.0, bottom: 8.0),

      child: Text(

        title,

        textAlign: TextAlign.left,

        style: TextStyle(

          fontSize: 28,

          fontWeight: FontWeight.w700,

          color: textTheme.bodyLarge?.color,

        ),

      ),

    );

  }
  
}
