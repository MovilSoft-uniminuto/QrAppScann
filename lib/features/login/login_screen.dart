import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_app_scann/features/login/providers/login_provider.dart';
import 'package:qr_app_scann/features/login/widgets/login_form.dart';
import 'package:qr_app_scann/features/login/widgets/social_login_section.dart';
import 'package:qr_app_scann/shared/widgets/theme_toggle_button.dart';

// Pantalla de inicio de sesión
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => LoginProvider(),
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
                Text(
                  'Iniciar Sesión',
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.w800,
                    color: Theme.of(context).textTheme.bodyLarge?.color,
                  ),
                ),
                const SizedBox(height: 60),
                const LoginForm(),
                const SizedBox(height: 28),
                const SocialLoginSection(),
                const SizedBox(height: 24),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
