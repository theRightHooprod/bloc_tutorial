// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

void main() {
  print('se actualizó el programa');
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  var texto = 'Hello, World!';

  @override
  Widget build(BuildContext context) {

    print('se actualizó el widget App()');
    
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(texto),
              IconButton(
                onPressed: () {
                  texto = 'Hello, Jadid!';
                  setState(() {});
                },
                icon: const Icon(Icons.person),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
