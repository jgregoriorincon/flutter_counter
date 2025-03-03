import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int clickCounter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                clickCounter = 0;
              });
            },
            icon: const Icon(Icons.refresh_rounded),
          ),
        ],
      ),
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
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CounterButton(
            icon: Icons.refresh_outlined,
            onPressed: () {
              setState(() => clickCounter = 0);
            },
          ),
          const SizedBox(height: 10),
          CounterButton(
            icon: Icons.plus_one,
            onPressed: () {
              setState(() => clickCounter++);
            },
          ),
          const SizedBox(height: 10),
          CounterButton(
            icon: Icons.exposure_minus_1,
            onPressed: () {
              if (clickCounter == 0) return;
              setState(() => clickCounter--);
            },
          ),
        ],
      ),
    );
  }
}

class CounterButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;

  const CounterButton({super.key, required this.icon, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const StadiumBorder(),
      // elevation: 10,
      enableFeedback: true,
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}
