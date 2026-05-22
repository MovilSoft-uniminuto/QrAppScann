import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_app_scann/const/theme/theme.dart';
import 'package:qr_app_scann/const/theme/theme_provider.dart';
import 'package:qr_app_scann/features/welcome/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String routeWelcome = '/';

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
          },
        );
      },
    );
  }
}
