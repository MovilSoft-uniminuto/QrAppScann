import 'package:flutter/material.dart';
import 'package:flutter_application/views/pagina1.dart';
import 'package:flutter_application/views/pagina2.dart';

void main()=> runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Home'),),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // BOTON PARA IR A PAGINA 1
            ElevatedButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=> Pagina1()),
                  );
              },
              child: const Text('Ir a Pagina 1'),
            ),

            // BOTON PARA IR A PAGINA 2
            ElevatedButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=>  Pagina2()),
                  );
              },
              child: const Text('Ir a Pagina 2'),
            )
          ],
        ),
      )
    );
  }
}




