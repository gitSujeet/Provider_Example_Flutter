import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/providers/number_provider.dart';

class NumberHomepage extends StatelessWidget {
  const NumberHomepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Number Provider Example",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Consumer<NumberProvider>(
          builder: (BuildContext context, NumberProvider numberProvider, Widget? child) =>
           Text(
            "Count: ${numberProvider.count}",
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: 'increment',
            onPressed: () {
              context.read<NumberProvider>().increaseCount();
            },
            backgroundColor: Colors.blue.shade900,
            child: Icon(Icons.add, color: Colors.white),
          ),
          SizedBox(height: 20),
          FloatingActionButton(
            heroTag: 'decrement',
            onPressed: () {
              context.read<NumberProvider>().decreaseCount();
            },
            backgroundColor: Colors.blue.shade900,
            child: Icon(Icons.remove, color: Colors.white),
          ),
          SizedBox(height: 30),
          FloatingActionButton(
            heroTag: 'reset',
            onPressed: () {
              context.read<NumberProvider>().resetCount();
            },
            backgroundColor: Colors.blue.shade900,
            child: Icon(Icons.refresh, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
