import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 20,
              itemBuilder: (BuildContext context, int index) => ElevatedButton(
                onPressed: () => ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text('Pressed on button $index'),
                  duration: const Duration(milliseconds: 500),
                )),
                child: Text('Button $index'),
              ),
            ),
          ),
          // const SizedBox(height: 32),
          // SizedBox(
          //   height: 100,
          //   child: ListView.builder(
          //     scrollDirection: Axis.horizontal,
          //     itemCount: 20,
          //     itemBuilder: (BuildContext context, int index) => ElevatedButton(
          //       onPressed: () => ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          //         content: Text('Pressed on button $index'),
          //         duration: const Duration(milliseconds: 500),
          //       )),
          //       child: Text('Button $index'),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
