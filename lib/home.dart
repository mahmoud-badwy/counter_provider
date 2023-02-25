import 'package:counter_provider/povider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter With Provider'),
      ),
      body: Center(
        child: Consumer<MyProvider>(
          builder: (context, value, child) {
            return Text(
              value.counter.toString(),
              style: Theme.of(context).textTheme.headline4,
            );
          },
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color.fromARGB(223, 146, 174, 222),
            ),
            child: Consumer<MyProvider>(
              builder: (context, pro, child) {
                return MaterialButton(
                  minWidth: 60,
                  height: 60,
                  onPressed: () {
                    pro.incrementCounter();
                  },
                  child: const Icon(Icons.add),
                );
              },
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color.fromARGB(223, 146, 174, 222),
            ),
            child: Consumer<MyProvider>(
              builder: (context, pro, child) {
                return MaterialButton(
                  minWidth: 60,
                  height: 60,
                  onPressed: () {
                    pro.decrementCounter();
                  },
                  child: const Icon(Icons.remove),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
