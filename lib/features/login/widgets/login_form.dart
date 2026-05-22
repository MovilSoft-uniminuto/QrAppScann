import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_app_scann/features/login/providers/login_provider.dart';
import 'package:qr_app_scann/shared/widgets/custom_text_field.dart';

// Formulario de login que consume el LoginProvider para gestionar su estado
class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    final loginProvider = context.watch<LoginProvider>();

    return Form(
      key: loginProvider.formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomTextField(
            controller: loginProvider.emailController,
            hintText: 'Correo institucional',
            prefixIcon: Icons.mail_outline_rounded,
            keyboardType: TextInputType.emailAddress,
          ),
          const SizedBox(height: 16),

          CustomTextField(
            controller: loginProvider.passwordController,
            hintText: 'Contraseña',
            prefixIcon: Icons.lock_outline_rounded,
            obscureText: loginProvider.obscurePassword,
            suffixIcon: IconButton(
              onPressed: loginProvider.toggleObscurePassword,
              icon: Icon(
                loginProvider.obscurePassword
                    ? Icons.visibility_off_outlined
                    : Icons.visibility_outlined,
              ),
            ),
          ),
          const SizedBox(height: 10),

          GestureDetector(
            onTap: () {
              // TODO: recuperar contraseña
            },
            child: Text(
              '¿Olvidaste tu contraseña?',
              style: TextStyle(
                fontSize: 13,
                color: Theme.of(context).textTheme.bodyMedium?.color,
              ),
            ),
          ),
          const SizedBox(height: 32),

          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                // TODO: ir al Home después de autenticar
                // Navigator.pushNamedAndRemoveUntil(context, '/home', (route) => false);
              },
              child: const Text('Iniciar sesión'),
            ),
          ),
        ],
      ),
    );
  }
}
