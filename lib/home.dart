import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter With Provider'),
      ),
      body: Center(
        child: Text(
          '$_counter',
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
      floatingActionButton: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color.fromARGB(223, 146, 174, 222),
        ),
        child: MaterialButton(
          minWidth: 60,
          height: 60,
          onPressed: () {
            _incrementCounter();
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
