import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_app_scann/const/theme/theme_provider.dart';

// Botón sol/luna para cambiar entre tema claro y oscuro.
// El parámetro [forceIconColor] permite forzar un color específico
// cuando el fondo de la pantalla no cambia con el tema (ej: Welcome).
class ThemeToggleButton extends StatelessWidget {
  final Color? forceIconColor;

  const ThemeToggleButton({super.key, this.forceIconColor});

  @override
  Widget build(BuildContext context) {
    final themeProvider = context.watch<ThemeProvider>();
    final isDark = themeProvider.isDark;

    // Si no se pasa color, usa el del tema actual
    final iconColor = forceIconColor ??
        (isDark ? const Color(0xFFFFFFFF) : const Color(0xFF1E1E1E));

    return IconButton(
      onPressed: () {
        themeProvider.isDark = !isDark;
      },
      icon: AnimatedSwitcher(
        duration: const Duration(milliseconds: 300),
        transitionBuilder: (child, animation) => RotationTransition(
          turns: animation,
          child: FadeTransition(opacity: animation, child: child),
        ),
        child: Icon(
          isDark ? Icons.light_mode_rounded : Icons.dark_mode_rounded,
          key: ValueKey<bool>(isDark),
          color: iconColor,
          size: 26,
        ),
      ),
      tooltip: isDark ? 'Cambiar a tema claro' : 'Cambiar a tema oscuro',
    );
  }
}
