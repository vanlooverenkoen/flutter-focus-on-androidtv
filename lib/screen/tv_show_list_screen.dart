import 'package:flutter/material.dart';

class TvShowListScreen extends StatelessWidget {
  const TvShowListScreen({super.key});

  @override
  Widget build(BuildContext context) => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Thank for your attention!! This was my demo :) ',
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text(
                    "What about iOS?",
                    style: TextStyle(fontSize: 30),
                  ),
                  duration: Duration(seconds: 30),
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  '🧙‍ Mystery button! 🧙',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
}
