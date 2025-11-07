import 'package:flutter/material.dart';

import '../../controllers/register_controller.dart';

class RegisterButtons extends StatelessWidget {

  const RegisterButtons({super.key, required this.controller, required this.onSuccess});

  final RegisterController controller;

  final VoidCallback onSuccess;

  @override

  Widget build(BuildContext context) {

    final textTheme = Theme.of(context).textTheme;

    return Column(

      crossAxisAlignment: CrossAxisAlignment.stretch,

      children: [

        const SizedBox(height: 75),

        SizedBox(

          height: 52,

          child: ElevatedButton(

            style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28.0))),

            onPressed: () async {

              if (controller.validate()) {

                final ok = await controller.register();

                if (ok) onSuccess();

              }

            },

            child: Text('Registrarse', style: TextStyle(color: textTheme.bodyMedium?.color ?? Colors.white, fontSize: 16, fontWeight: FontWeight.w600)),

          ),

        ),

        const SizedBox(height: 18),

        Row(

          children: [

            Expanded(child: Divider(thickness: 1, color: Theme.of(context).dividerColor)),

            Padding(padding: const EdgeInsets.symmetric(horizontal: 8.0), child: Text('o continuar con', style: TextStyle(fontSize: 12, color: Theme.of(context).textTheme.bodySmall?.color))),

            Expanded(child: Divider(thickness: 1, color: Theme.of(context).dividerColor)),

          ],

        ),

        const SizedBox(height: 18),

        SizedBox(

          height: 48,

          child: OutlinedButton(

            style: OutlinedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28.0)), side: BorderSide(color: Theme.of(context).dividerColor)),

            onPressed: () {},

            child: Row(

              mainAxisAlignment: MainAxisAlignment.center,

              children: [

                Container(

                  width: 28,
                  
                  height: 28,
                  
                  decoration: BoxDecoration(shape: BoxShape.rectangle, borderRadius: BorderRadius.circular(4), color: Colors.transparent),

                  child: Image.network(
                    
                    'https://developers.google.com/identity/images/g-logo.png',
                    
                    width: 24,
                    
                    height: 24,
                    
                    fit: BoxFit.contain,
                    
                    loadingBuilder: (context, child, loadingProgress) {

                      if (loadingProgress == null) return child;
                      
                      return const Center(child: SizedBox(width: 12, height: 12, child: CircularProgressIndicator(strokeWidth: 2)));

                    },

                    errorBuilder: (context, error, stackTrace) => const Center(child: Icon(Icons.error, size: 20, color: Colors.redAccent)),

                  ),
                  
                ),

                const SizedBox(width: 12),
                
                Text('Google', style: TextStyle(color: Theme.of(context).textTheme.bodyMedium?.color, fontWeight: FontWeight.w600)),
                
              ],
              
            ),
            
          ),
          
        ),
        
      ],
      
    );

  }
  
}
