import 'package:basketball_counter_app/cubit/counter_cubit.dart';
import 'package:basketball_counter_app/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
                  BlocBuilder<CounterCubit, CounterState>(
                    builder: (context, state) {
                      return Text('${context.read<CounterCubit>().teamAPoints}',
                          style: const TextStyle(fontSize: 128));
                    },
                  ),
                  CustomButton(
                      onPressed: () => context
                          .read<CounterCubit>()
                          .teamIncrease(team: 'A', value: 1),
                      buttonText: 'Add 1 Point'),
                  const SizedBox(height: 8),
                  CustomButton(
                      onPressed: () => context
                          .read<CounterCubit>()
                          .teamIncrease(team: 'A', value: 2),
                      buttonText: 'Add 2 Point'),
                  const SizedBox(height: 8),
                  CustomButton(
                      onPressed: () => context
                          .read<CounterCubit>()
                          .teamIncrease(team: 'A', value: 3),
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
                  BlocBuilder<CounterCubit, CounterState>(
                    builder: (context, state) {
                      return Text('${context.read<CounterCubit>().teamBPoints}',
                          style: const TextStyle(fontSize: 128));
                    },
                  ),
                  CustomButton(
                      onPressed: () => context
                          .read<CounterCubit>()
                          .teamIncrease(team: 'B', value: 1),
                      buttonText: 'Add 1 Point'),
                  const SizedBox(height: 8),
                  CustomButton(
                      onPressed: () => context
                          .read<CounterCubit>()
                          .teamIncrease(team: 'B', value: 2),
                      buttonText: 'Add 2 Point'),
                  const SizedBox(height: 8),
                  CustomButton(
                      onPressed: () => context
                          .read<CounterCubit>()
                          .teamIncrease(team: 'B', value: 3),
                      buttonText: 'Add 3 Point')
                ],
              ),
            ],
          ),
          const SizedBox(height: 80),
          ElevatedButton(
            onPressed: () => context.read<CounterCubit>().reset(),
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
