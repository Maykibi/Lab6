import 'package:flutter/material.dart';
import 'second_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home Screen")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondScreen()),
              
                );
              },
              child: Text("Push → Second"),
            ),
            ElevatedButton(

              onPressed: () {
                Navigator.pushNamed(context, '/second');
              },
              child: Text("PushNamed → Second"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => SecondScreen()),
                );
              },
              child: Text("PushReplacement → Second"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => const SecondScreen()),
                  (route) => false,
                );
              },
              child: Text("PushAndRemoveUntil → Second"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  '/second',
                  (route) => false,
                );
              },
              child: const Text("PushNamedAndRemoveUntil → Second"),
            ),
          ],
        ),
      ),
    );
  }
}
