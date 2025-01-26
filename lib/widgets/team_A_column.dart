import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/cubit/counter_cubit.dart';

class TeamAColumn extends StatelessWidget {
  const TeamAColumn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text(
            'Team A',
            style: TextStyle(
              fontSize: 32,
            ),
          ),
          Text(
            BlocProvider.of<CounterCubit>(context).teamApoints.toString(),
            style: const TextStyle(
              fontSize: 150,
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(8),
              backgroundColor: Colors.orange,
              minimumSize: const Size(150, 50),
            ),
            onPressed: () {
              BlocProvider.of<CounterCubit>(context).teamIncrement('A', 1);
            },
            child: const Text(
              'Add 1 Point ',
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange,
              minimumSize: const Size(150, 50),
            ),
            onPressed: () {
              BlocProvider.of<CounterCubit>(context).teamIncrement('A', 2);
            },
            child: const Text(
              'Add 2 Point',
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange,
              minimumSize: const Size(150, 50),
            ),
            onPressed: () {
              BlocProvider.of<CounterCubit>(context).teamIncrement('A', 3);
            },
            child: const Text(
              'Add 3 Point ',
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
