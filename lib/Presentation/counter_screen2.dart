import 'package:counter_bloc/counter/bloc/bloc.dart';
import 'package:counter_bloc/counter/bloc/event.dart';
import 'package:counter_bloc/counter/bloc/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreen2 extends StatelessWidget {
  const CounterScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterBloc, CounterStates>(
        listener: (context, state) {
      if (state is CounterSuccessState) {}
    }, builder: (context, state) {
      int count = CounterBloc.get(context).count;
      return Scaffold(
        appBar: AppBar(),
        body: Center(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FloatingActionButton(
              heroTag: null,
              onPressed: () {
                CounterBloc.get(context).add(IncrementEvent());
              },
              child: const Icon(Icons.add),
            ),
            const SizedBox(
              width: 20.0,
            ),
            Text(
              count.toString(),
              style: const TextStyle(fontSize: 22),
            ),
            const SizedBox(
              width: 20.0,
            ),
            FloatingActionButton(
              heroTag: Text("btn4"),
              onPressed: () {
                CounterBloc.get(context).add(DecrementEvent());
              },
              child: const Icon(Icons.remove),
            ),
          ],
        )),
      );
    });
  }
}
