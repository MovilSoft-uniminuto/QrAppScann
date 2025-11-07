import 'package:flutter/material.dart';
import 'package:flutter_application/views/pagina1.dart';
import 'package:flutter_application/views/pagina2.dart';

import 'presentation/themes/app_theme.dart';

import 'presentation/screens/login.dart';

import 'presentation/screens/register.dart';

void main() => runApp(const MyEntrypoint());

class MyEntrypoint extends StatelessWidget {

  const MyEntrypoint({super.key});

  @override

  Widget build(BuildContext context) {

    return const MiApp(home: PantallaInicio());
    
  }
}

class PantallaInicio extends StatelessWidget {

  const PantallaInicio({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(

        title: const Text('Vista previa - Login/Registro'),

        actions: [

          IconButton(

            onPressed: () {

              final state = MiApp.of(context);

              if (state != null) state.toggleModo();

            },

            icon: const Icon(Icons.brightness_6),

            tooltip: 'Alternar modo claro/oscuro',

          ),

        ],

      ),

      body: SafeArea(

        child: Center(

          child: Column(

            mainAxisSize: MainAxisSize.min,

            children: [

              //LOGIN

              ElevatedButton(

                onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const LoginPage())),

                child: const Text('Ver Login'),

              ),

              const SizedBox(height: 12),

              //REGISTER

              ElevatedButton(

                onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const Register())),

                child: const Text('Ver Registro'),

              ),

              const SizedBox(height: 12),

              // SIGUIENTE VISTA

              ElevatedButton(

                onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const Register())), // Cambia Register() por la siguiente vista

                child: const Text('Siguiente Vista'),

              ),

            ],

          ),

        ),

      ),

    );

  }

}
