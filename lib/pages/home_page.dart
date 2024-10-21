import 'package:basketball_counter_app/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  const Text('0', style: TextStyle(fontSize: 128)),
                  CustomButton(onPressed: () {}, buttonText: 'Add 1 Point'),
                  const SizedBox(height: 8),
                  CustomButton(onPressed: () {}, buttonText: 'Add 2 Point'),
                  const SizedBox(height: 8),
                  CustomButton(onPressed: () {}, buttonText: 'Add 3 Point')
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
                  const Text('0', style: TextStyle(fontSize: 128)),
                  CustomButton(onPressed: () {}, buttonText: 'Add 1 Point'),
                  const SizedBox(height: 8),
                  CustomButton(onPressed: () {}, buttonText: 'Add 2 Point'),
                  const SizedBox(height: 8),
                  CustomButton(onPressed: () {}, buttonText: 'Add 3 Point')
                ],
              ),
            ],
          ),
          const SizedBox(height: 80),
          ElevatedButton(
            onPressed: () {},
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
    );
  }
}
