import 'package:flutter/material.dart';

abstract class MiAppController {

	ThemeMode get modo;

	void toggleModo();

}

class MiApp extends StatefulWidget {

	const MiApp({super.key, required this.home});

	final Widget home;

	static MiAppController? of(BuildContext context) =>

			context.findAncestorStateOfType<_MiAppState>();

	@override

	State<MiApp> createState() => _MiAppState();

}

class _MiAppState extends State<MiApp> implements MiAppController {

	ThemeMode _modo = ThemeMode.light;

	@override

	ThemeMode get modo => _modo;

	@override

	void toggleModo() => setState(() => _modo = _modo == ThemeMode.light ? ThemeMode.dark : ThemeMode.light);

	final ThemeData _temaClaro = ThemeData(

		brightness: Brightness.light,

		scaffoldBackgroundColor: const Color(0xFFFFFFFF),

		colorScheme: const ColorScheme.light(primary: Color(0xFFEEEEEE), secondary: Color(0xFF6C69EA)),

		textTheme: const TextTheme(

			bodyLarge: TextStyle(color: Color(0xFF222222)),

			bodyMedium: TextStyle(color: Color(0xFF555555)),

			bodySmall: TextStyle(color: Color(0xFF555555)),

		),

		iconTheme: const IconThemeData(color: Color(0xFF222222)),
    
		appBarTheme: const AppBarTheme(backgroundColor: Color(0xFFFFFFFF), iconTheme: IconThemeData(color: Color(0xFF222222)), titleTextStyle: TextStyle(color: Color(0xFF222222), fontSize: 20, fontWeight: FontWeight.w600)),

		dividerColor: const Color(0xFFDDDDDD),

		inputDecorationTheme: const InputDecorationTheme(

			filled: true,

			fillColor: Color(0xFFB3B0B0),

			hintStyle: TextStyle(color: Color(0xFF555555)),

			labelStyle: TextStyle(color: Color(0xFF555555)),

			iconColor: Color(0xFF222222),

			contentPadding: EdgeInsets.symmetric(vertical: 18.0, horizontal: 12.0),

			border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(30.0)), borderSide: BorderSide.none),

		),

		textSelectionTheme: const TextSelectionThemeData(cursorColor: Color(0xFF222222)),

		elevatedButtonTheme: ElevatedButtonThemeData(style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFF000000), foregroundColor: Colors.white, shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(28.0))))),

		outlinedButtonTheme: OutlinedButtonThemeData(style: OutlinedButton.styleFrom(side: const BorderSide(color: Color(0xFFDAD8D8)), foregroundColor: const Color(0xFF222222), shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(28.0))))),

	);

	final ThemeData _temaOscuro = ThemeData(

		brightness: Brightness.dark,

		scaffoldBackgroundColor: const Color(0xFF1B232D),

		colorScheme: const ColorScheme.dark(primary: Color(0xFF6C69EA), secondary: Color(0xFF6C69EA)),

		textTheme: const TextTheme(

			bodyLarge: TextStyle(color: Color(0xFFE8E8E8)),

			bodyMedium: TextStyle(color: Color(0xFFCCCCCC)),

			bodySmall: TextStyle(color: Color(0xFFBFBFBF)),

		),

		iconTheme: const IconThemeData(color: Color(0xFFE8E8E8)),

		appBarTheme: const AppBarTheme(backgroundColor: Color(0xFF1B232D), iconTheme: IconThemeData(color: Color(0xFFE8E8E8)), titleTextStyle: TextStyle(color: Color(0xFFE8E8E8), fontSize: 20, fontWeight: FontWeight.w600)),

		dividerColor: const Color(0xFF3A4654),

		inputDecorationTheme: const InputDecorationTheme(

			filled: true,

			fillColor: Color(0xFF25313F),

			hintStyle: TextStyle(color: Color(0xFFBFBFBF)),

			labelStyle: TextStyle(color: Color(0xFFBFBFBF)),

			iconColor: Color(0xFFE8E8E8),

			contentPadding: EdgeInsets.symmetric(vertical: 18.0, horizontal: 12.0),

			border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(30.0)), borderSide: BorderSide.none),

		),

		textSelectionTheme: const TextSelectionThemeData(cursorColor: Color(0xFFE8E8E8)),

		elevatedButtonTheme: ElevatedButtonThemeData(style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFF6C69EA), foregroundColor: Colors.white, shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(28.0))))),

		outlinedButtonTheme: OutlinedButtonThemeData(style: OutlinedButton.styleFrom(side: const BorderSide(color: Color(0xFFDAD8D8)), foregroundColor: const Color(0xFFE8E8E8), shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(28.0))))),

	);

	@override

	Widget build(BuildContext context) {

		return MaterialApp(

			debugShowCheckedModeBanner: false,

			title: 'Demo Login/Registro',

			theme: _temaClaro,

			darkTheme: _temaOscuro,

			themeMode: _modo,

			home: widget.home,

		);

	}

}





