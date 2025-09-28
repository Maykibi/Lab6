import 'package:flutter/material.dart';


class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Third')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // pop back to previous (if any)
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('pop (back)'),
            ),

            const SizedBox(height: 12),

            // Back to Home by clearing stack
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  '/',
                  (route) => false,
                );
              },
              child: const Text('pushNamedAndRemoveUntil -> Home (clear stack)'),
            ),
          ],
        ),
      ),
    );
  }
}