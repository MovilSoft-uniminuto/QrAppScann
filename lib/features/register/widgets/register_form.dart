import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_app_scann/features/register/providers/register_provider.dart';
import 'package:qr_app_scann/main.dart';
import 'package:qr_app_scann/shared/widgets/custom_text_field.dart';

// Formulario de registro que consume el RegisterProvider para gestionar su estado
class RegisterForm extends StatelessWidget {
  const RegisterForm({super.key});

  @override
  Widget build(BuildContext context) {
    final registerProvider = context.watch<RegisterProvider>();

    return Form(
      key: registerProvider.formKey,
      child: Column(
        children: [
          CustomTextField(
            controller: registerProvider.emailController,
            hintText: 'Correo institucional',
            prefixIcon: Icons.mail_outline_rounded,
            keyboardType: TextInputType.emailAddress,
          ),
          const SizedBox(height: 16),

          CustomTextField(
            controller: registerProvider.passwordController,
            hintText: 'Contraseña',
            prefixIcon: Icons.lock_outline_rounded,
            obscureText: registerProvider.obscurePassword,
            suffixIcon: IconButton(
              onPressed: registerProvider.toggleObscurePassword,
              icon: Icon(
                registerProvider.obscurePassword
                    ? Icons.visibility_off_outlined
                    : Icons.visibility_outlined,
              ),
            ),
          ),
          const SizedBox(height: 16),

          CustomTextField(
            controller: registerProvider.confirmPasswordController,
            hintText: 'Confirmar contraseña',
            prefixIcon: Icons.lock_outline_rounded,
            obscureText: registerProvider.obscureConfirm,
            suffixIcon: IconButton(
              onPressed: registerProvider.toggleObscureConfirm,
              icon: Icon(
                registerProvider.obscureConfirm
                    ? Icons.visibility_off_outlined
                    : Icons.visibility_outlined,
              ),
            ),
          ),
          const SizedBox(height: 32),

          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, MyApp.routeVerification);
              },
              child: const Text('Registrarse'),
            ),
          ),
        ],
      ),
    );
  }
}
