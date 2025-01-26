import 'package:counter_application/cubit/cubit/counter_cubit.dart';
import 'package:counter_application/widgets/reset_button.dart';
import 'package:counter_application/widgets/team_A_column.dart';
import 'package:counter_application/widgets/team_B_column.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatelessWidget {
  const Home({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterCubit, CounterState>(
      builder: (context, state) {
        return HomeViewBody();
      },
    );
  }
}

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text('Points Counter'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TeamAColumn(),
              SizedBox(
                height: 500,
                child: const VerticalDivider(
                  indent: 50,
                  endIndent: 50,
                  color: Colors.grey,
                  thickness: 1,
                ),
              ),
              TeamBColumn(),
            ],
          ),
          CustomResetButton(),
        ],
      ),
    );
  }
}
