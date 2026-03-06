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
        return Builder(
          builder: (context) {
            return MaterialApp(
              title: 'Flutter Demo',
              theme: theme.isDark ? themeDark : themeLight,
              home: Scaffold(),
            );
          },
        );
      },
    );
  }
}
