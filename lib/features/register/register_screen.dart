import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_app_scann/features/register/providers/register_provider.dart';
import 'package:qr_app_scann/features/register/widgets/register_form.dart';
import 'package:qr_app_scann/features/register/widgets/social_register_section.dart';
import 'package:qr_app_scann/shared/widgets/theme_toggle_button.dart';

/// Pantalla de registro de QrAppScann.
/// Muestra el formulario Email / Password / Confirm Password,
/// opción de Google y enlace a Login.
class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => RegisterProvider(),
      child: Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        actions: const [
          ThemeToggleButton(),
          SizedBox(width: 8),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 28.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 12),

              // Título
              Text(
                'Registro',
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.w800,
                  color: Theme.of(context).textTheme.bodyLarge?.color,
                ),
              ),
              const SizedBox(height: 60),

              // Formulario
              const RegisterForm(),
              const SizedBox(height: 28),

              // Sección social
              const SocialRegisterSection(),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
      ),
    );
  }
}
