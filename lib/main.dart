import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Week3ALayout());
  }
}

class Week3ALayout extends StatelessWidget {
  const Week3ALayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: const Text('Week 3A App'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 150),
            Row(
              children: [
                const SizedBox(width: 15),
                Container(
                  color: Colors.lightGreen,
                  width: 300,
                  height: 150,
                  child: const Text('Hello Week 1'),
                ),
              ],
            ),
            Row(
              children: [
                const SizedBox(width: 60),
                Container(
                  color: Colors.yellow,
                  width: 220,
                  height: 155,
                  child: const Text('Hello Week 2'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
