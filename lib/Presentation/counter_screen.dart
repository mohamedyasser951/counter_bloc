import 'package:counter_bloc/Presentation/counter_screen2.dart';
import 'package:counter_bloc/counter/bloc/bloc.dart';
import 'package:counter_bloc/counter/bloc/event.dart';
import 'package:counter_bloc/counter/bloc/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreen extends StatelessWidget {
  CounterBloc globalBloc = CounterBloc();
   CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => globalBloc,
        child: BlocConsumer<CounterBloc, CounterStates>(
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
                  heroTag:const Text("btn2"),
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
                  heroTag: const Text("btn2"),
                  onPressed: () {
                    CounterBloc.get(context).add(DecrementEvent());
                  },
                  child: const Icon(Icons.remove),
                ),
                const SizedBox(
                  width: 30.0,
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CounterScreen2()));
                  },
                  color: Colors.blue,
                  child: const Text("Go To page2"),
                )
              ],
            )),
          );
        }));
  }
}
