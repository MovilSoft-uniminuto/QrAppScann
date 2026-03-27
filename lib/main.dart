import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_app_scann/const/theme/theme.dart';
import 'package:qr_app_scann/presentation/providers/theme_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => ThemeProvider())],
      builder: (context, child) {
        final theme = Provider.of<ThemeProvider>(context);

        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'QR Scanner',
          theme: theme.isDark ? themeDark : themeLight,
          home: SplashScreen(),
        );
      },
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Color(0xFF010009),
          ),

          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.center, 
                colors: [Color(0xFF010009), Colors.transparent],
                stops: [0.0, 0.80], 
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.transparent, Color(0xFF006A8C)],
                stops: [0.18, 1.0],
              ),
            ),
          ),

          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [Colors.transparent, Color(0xFF4F1874)],
                stops: [0.28, 1.0],
              ),
            ),
          ),

          const Center(
            child: Text(
              'SA',
              style: TextStyle(
                color: Colors.white,
                fontSize: 50,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
