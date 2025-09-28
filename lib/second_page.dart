import 'package:flutter/material.dart';
import 'package:flutter_application_3/third_page.dart';
import 'package:flutter_application_3/first_page.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Second')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // pop: go back
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('pop (back)'),
              ),

              const SizedBox(height: 12),

              // push -> Third (MaterialPageRoute)
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const ThirdScreen(),
                    ),
                  );
                },
                child: const Text('push -> Third'),
              ),

              const SizedBox(height: 12),

              // popAndPushNamed: close Second and open Third
              ElevatedButton(
                onPressed: () {
                  Navigator.popAndPushNamed(context, '/third');
                },
                child: const Text('popAndPushNamed -> Third'),
              ),

              const SizedBox(height: 12),

              // pushReplacement -> Third
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const ThirdScreen(),
                    ),
                  );
                },
                child: const Text('pushReplacement -> Third'),
              ),

              const SizedBox(height: 12),

              // pushNamedAndRemoveUntil -> Third (clear stack)
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    '/third',
                    (route) => false,
                  );
                },
                child: const Text('pushNamedAndRemoveUntil -> Third (clear stack)'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}