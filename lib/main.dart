import 'package:flutter/material.dart';
import 'components/custom_button.dart';

void main() {
  runApp(const BasketballCounter());
}

class BasketballCounter extends StatefulWidget {
  const BasketballCounter({super.key});

  @override
  State<BasketballCounter> createState() => _BasketballCounterState();
}

class _BasketballCounterState extends State<BasketballCounter> {
  var teamAPoints = 0;
  var teamBPoints = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Basketball Counter'),
          backgroundColor: Colors.orange,
          foregroundColor: Colors.white,
        ),
        body: Column(
          children: [
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    const Text('Team A', style: TextStyle(fontSize: 32)),
                    Text('$teamAPoints', style: const TextStyle(fontSize: 128)),
                    CustomButton(
                        onPressed: () => setState(() => teamAPoints++),
                        buttonText: 'Add 1 Point'),
                    const SizedBox(height: 8),
                    CustomButton(
                        onPressed: () => setState(() => teamAPoints += 2),
                        buttonText: 'Add 2 Point'),
                    const SizedBox(height: 8),
                    CustomButton(
                        onPressed: () => setState(() => teamAPoints += 3),
                        buttonText: 'Add 3 Point')
                  ],
                ),
                const SizedBox(
                  height: 389,
                  child: VerticalDivider(
                    color: Colors.grey,
                    thickness: 1,
                    indent: 16,
                  ),
                ),
                Column(
                  children: [
                    const Text('Team B', style: TextStyle(fontSize: 32)),
                    Text('$teamBPoints', style: const TextStyle(fontSize: 128)),
                    CustomButton(
                        onPressed: () => setState(() => teamBPoints++),
                        buttonText: 'Add 1 Point'),
                    const SizedBox(height: 8),
                    CustomButton(
                        onPressed: () => setState(() => teamBPoints += 2),
                        buttonText: 'Add 2 Point'),
                    const SizedBox(height: 8),
                    CustomButton(
                        onPressed: () => setState(() => teamBPoints += 3),
                        buttonText: 'Add 3 Point')
                  ],
                ),
              ],
            ),
            const SizedBox(height: 80),
            ElevatedButton(
              onPressed: () => setState(() {
                teamAPoints = 0;
                teamBPoints = 0;
              }),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                foregroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4)),
                textStyle: const TextStyle(fontSize: 18),
                minimumSize: const Size(150, 40),
              ),
              child: const Text('Reset'),
            )
          ],
        ),
      ),
    );
  }
}
