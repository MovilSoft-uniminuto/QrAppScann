import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Un campo del código OTP: solo acepta un dígito y mueve el foco automáticamente
class OtpInputField extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode focusNode;
  final FocusNode? nextFocusNode;
  final FocusNode? previousFocusNode;

  const OtpInputField({
    super.key,
    required this.controller,
    required this.focusNode,
    this.nextFocusNode,
    this.previousFocusNode,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return SizedBox(
      width: 52,
      height: 58,
      child: TextFormField(
        controller: controller,
        focusNode: focusNode,
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        maxLength: 1,
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.w700,
          color: Theme.of(context).textTheme.bodyLarge?.color,
        ),
        decoration: InputDecoration(
          counterText: '',
          filled: true,
          fillColor: isDark
              ? const Color(0xFF1B232D)
              : const Color(0xFFFFFFFF),
          contentPadding: EdgeInsets.zero,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(
              color: isDark
                  ? const Color(0xFF4D4D4D)
                  : const Color(0xFFB3B0B0),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(
              color: isDark
                  ? const Color(0xFF4D4D4D)
                  : const Color(0xFFB3B0B0),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(
              color: Color(0xFF6C69EA),
              width: 2,
            ),
          ),
        ),
        onChanged: (value) {
          if (value.isNotEmpty && nextFocusNode != null) {
            nextFocusNode!.requestFocus();
          } else if (value.isEmpty && previousFocusNode != null) {
            previousFocusNode!.requestFocus();
          }
        },
      ),
    );
  }
}
