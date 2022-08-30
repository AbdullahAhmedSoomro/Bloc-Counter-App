import 'package:bloc/bloc.dart';
import 'package:bloc_project_practice/bloc/counter_bloc.dart';
import 'package:bloc_project_practice/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterBloc, CounterState>(
      builder: (context, state) {
        return Scaffold(
            appBar: AppBar(title: Text("Counter App")),
            body: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        context.read<CounterBloc>().add(OnIncrementCounter());
                      },
                      child: Text("+")),
                  Text("${state.count}"),
                  ElevatedButton(
                      onPressed: () {
                        context.read<CounterBloc>().add(OnDecrementCounter());
                      },
                      child: Text("-"))
                ],
              ),
            ));
      },
    );
  }
}
