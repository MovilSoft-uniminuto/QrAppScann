import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_app_scann/const/theme/theme.dart';
import 'package:qr_app_scann/const/theme/theme_provider.dart';
import 'package:qr_app_scann/features/login/login_screen.dart';
import 'package:qr_app_scann/features/register/register_screen.dart';
import 'package:qr_app_scann/features/verification/verification_screen.dart';
import 'package:qr_app_scann/features/welcome/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String routeWelcome = '/';
  static const String routeLogin = '/login';
  static const String routeRegister = '/register';
  static const String routeVerification = '/verification';

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => ThemeProvider())],
      builder: (context, child) {
        final theme = Provider.of<ThemeProvider>(context);
        return MaterialApp(
          title: 'QrAppScann — UNIMINUTO',
          debugShowCheckedModeBanner: false,
          theme: theme.isDark ? themeDark : themeLight,
          initialRoute: routeWelcome,
          routes: {
            routeWelcome: (context) => const WelcomeScreen(),
            routeLogin: (context) => const LoginScreen(),
            routeRegister: (context) => const RegisterScreen(),
            routeVerification: (context) => const VerificationScreen(),
          },
        );
      },
    );
  }
}
