import 'package:flutter/material.dart';

class CounterBasic extends StatefulWidget {
  const CounterBasic({super.key});

  @override
  State<CounterBasic> createState() => _CounterBasicState();
}

class _CounterBasicState extends State<CounterBasic> {
  int clickCounter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Counter Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$clickCounter',
              style: TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
            ),
            Text(
              'Click${clickCounter == 1 ? '' : 's'}',
              style: const TextStyle(fontSize: 25),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          clickCounter++;
          setState(() {
            clickCounter = clickCounter;
          });
        },
        child: const Icon(Icons.plus_one),
      ),
    );
  }
}
