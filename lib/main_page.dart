import 'package:flutter/material.dart';
import 'package:flutter_application_3/Second_page.dart';
import 'package:flutter_application_3/second_page.dart';
import 'package:flutter_application_3/third_page.dart';


void main() {
  runApp(const HomeScreen());
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // push: Home -> Second (MaterialPageRoute)
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const SecondPage(),
                    ),
                  );
                },
                child: const Text('push -> Second (MaterialPageRoute)'),
              ),

              const SizedBox(height: 12),

              // pushNamed: Home -> Second
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/second');
                },
                child: const Text('pushNamed -> Second'),
              ),

              const SizedBox(height: 12),

              // pushReplacement: replace Home with Second (no back)
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const SecondScreen(),
                    ),
                  );
                },
                child: const Text('pushReplacement -> Second (no back to Home)'),
              ),

              const SizedBox(height: 12),

              // pushAndRemoveUntil: go to Second and clear stack
              ElevatedButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const SecondScreen(),
                    ),
                    (route) => false, // remove all previous routes
                  );
                },
                child: const Text('pushAndRemoveUntil -> Second (clear stack)'),
              ),

              const SizedBox(height: 12),

              // pushNamedAndRemoveUntil: go to Second via named route and clear stack
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    '/second',
                    (route) => false,
                  );
                },
                child: const Text('pushNamedAndRemoveUntil -> Second (clear stack)'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
