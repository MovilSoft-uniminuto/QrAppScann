import 'package:flutter/material.dart';
import 'package:qr_app_scann/features/verification/widgets/otp_input_field.dart';

// Tarjeta con los 5 campos del código de verificación
class OtpCard extends StatefulWidget {
  final String email;

  const OtpCard({
    super.key,
    this.email = 'alumno@uniminuto.edu.co',
  });

  @override
  State<OtpCard> createState() => _OtpCardState();
}

class _OtpCardState extends State<OtpCard> {
  static const int _otpLength = 5;

  late final List<TextEditingController> _controllers;
  late final List<FocusNode> _focusNodes;

  @override
  void initState() {
    super.initState();
    _controllers = List.generate(_otpLength, (_) => TextEditingController());
    _focusNodes = List.generate(_otpLength, (_) => FocusNode());
  }

  @override
  void dispose() {
    for (final c in _controllers) {
      c.dispose();
    }
    for (final f in _focusNodes) {
      f.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final cardColor = isDark
        ? const Color(0xFF25313F)
        : const Color(0xFFD9D9D9);
    final bodyTextColor = Theme.of(context).textTheme.bodyLarge?.color;
    final subtleTextColor = Theme.of(context).textTheme.bodySmall?.color;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Verifica tu correo electrónico',
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w700,
              color: bodyTextColor,
            ),
          ),
          const SizedBox(height: 8),

          Text(
            'Ingresa el código que enviamos a tu correo:',
            style: TextStyle(
              fontSize: 13,
              color: subtleTextColor,
              height: 1.4,
            ),
          ),
          const SizedBox(height: 10),

          Text(
            widget.email,
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w500,
              color: bodyTextColor,
              decoration: TextDecoration.underline,
              decorationColor: bodyTextColor,
            ),
          ),
          const SizedBox(height: 24),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(_otpLength, (index) {
              return OtpInputField(
                controller: _controllers[index],
                focusNode: _focusNodes[index],
                nextFocusNode:
                    index < _otpLength - 1 ? _focusNodes[index + 1] : null,
                previousFocusNode:
                    index > 0 ? _focusNodes[index - 1] : null,
              );
            }),
          ),
        ],
      ),
    );
  }
}
