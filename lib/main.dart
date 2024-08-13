// ignore_for_file: avoid_print

import 'package:bloc_test/actualizar_texto_cubit/actualizar_texto_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
  @override
  Widget build(BuildContext context) {
    print('se actualizó el widget App()');

    var actualizarTextoCubit = ActualizarTextoCubit();

    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              BlocConsumer(
                bloc: actualizarTextoCubit,
                listenWhen: (previous, current) =>
                    current is ActualizarTextoActionState,
                buildWhen: (previous, current) =>
                    current is! ActualizarTextoActionState,
                listener: (context, state) {
                  if (state is ActualizarTextoSayHi) {
                    print('hi');
                  }
                },
                builder: (context, state) {
                  switch (state.runtimeType) {
                    case const (ActualizarTextoInitial):
                      return const Text('Hello, World!');
                    case const (ActualizarTextoATexto2):
                      return const Text('Hello, Jadid!');
                    case const (ActualizarTextoATexto3):
                      return const Text('Hello, World! Hello, Jadid!');
                    default:
                      return const Text('');
                  }
                },
              ),
                            BlocConsumer(
                bloc: actualizarTextoCubit,
                listenWhen: (previous, current) =>
                    current is ActualizarTextoActionState,
                buildWhen: (previous, current) =>
                    current is! ActualizarTextoActionState,
                listener: (context, state) {
                  if (state is ActualizarTextoSayHi) {
                    print('hi');
                  }
                },
                builder: (context, state) {
                  switch (state.runtimeType) {
                    case const (ActualizarTextoInitial):
                      return const Text('Hola');
                    case const (ActualizarTextoATexto2):
                      return const Text('Hola 2');
                    case const (ActualizarTextoATexto3):
                      return const Text('Hola 3');
                    default:
                      return const Text('');
                  }
                },
              ),
              IconButton(
                onPressed: () {
                  actualizarTextoCubit.actualizarTextoATexto3();
                //   actualizarTextoCubit.sayHi();
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
