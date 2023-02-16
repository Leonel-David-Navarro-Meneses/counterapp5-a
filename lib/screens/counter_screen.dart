import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int contador = 0;
  @override
  Widget build(BuildContext context) {
    const TextStyle estiloTexto = TextStyle(
      fontSize: 30,
      color: Colors.white,
      fontWeight: FontWeight.bold,
    );
    return Scaffold(
        appBar: AppBar(
          title: const Text('HomeScreeen'),
          elevation: 5.5,
        ),
        backgroundColor: Color.fromARGB(172, 185, 4, 4),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'numero de taps: ',
              style: estiloTexto,
            ),
            Text(
              '$contador',
              style: estiloTexto,
            ),
          ],
        )),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FloatingActionButton(
              backgroundColor: const Color.fromARGB(255, 255, 251, 31),
              foregroundColor: const Color.fromARGB(255, 0, 0, 0),
              onPressed: () => setState(() => contador--),
              child: const Icon(Icons.exposure_minus_1),
            ),
            FloatingActionButton(
              backgroundColor: const Color.fromARGB(255, 255, 251, 31),
              foregroundColor: const Color.fromARGB(255, 0, 0, 0),
              onPressed: () => setState(() => contador = 0),
              child: const Icon(Icons.restart_alt),
            ),
            FloatingActionButton(
              backgroundColor: const Color.fromARGB(255, 255, 251, 31),
              foregroundColor: const Color.fromARGB(255, 0, 0, 0),
              onPressed: () => setState(() => contador++),
              child: const Icon(Icons.exposure_plus_1),
            ),
          ],
        ));
  }
}
