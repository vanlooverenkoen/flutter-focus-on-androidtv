import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) => ElevatedButton(
                  onPressed: () => ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text('Pressed on button $index'),
                    duration: const Duration(milliseconds: 500),
                  )),
                  child: Text('Button $index'),
                ),
              ),
            ),
            const SizedBox(width: 32),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) => ElevatedButton(
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll<Color>(Colors.green),
                  ),
                  onPressed: () => ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text('Pressed on button $index'),
                    duration: const Duration(milliseconds: 500),
                  )),
                  child: Text('Button $index'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
