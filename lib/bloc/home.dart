import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practise_app/bloc/bloc/counter_bloc.dart';
import 'package:practise_app/bloc/bloc/counter_event.dart';
import 'package:practise_app/bloc/bloc/counter_state.dart';

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _HomeState();
}

class _HomeState extends State<CounterApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[100],
        title: Text(" Counter App"),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: BlocConsumer<CounterBloc, CounterState>(
              listener: (context, state) {},
              builder: (context, state) {
                return FloatingActionButton(
                  onPressed: () {
                    context.read<CounterBloc>().add(IncrementEvent());
                    print("Im increment");
                  },
                  child: Icon(Icons.add),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: BlocConsumer<CounterBloc, CounterState>(
              listener: (context, state) {},
              builder: (context, state) {
                return FloatingActionButton(
                    onPressed: () {
                      context.read<CounterBloc>().add(DecrementEvent());
                      print("Im decrement");
                    },
                    child: Icon(Icons.minimize));
              },
            ),
          ),
        ],
      ),
      body: Center(
        child: BlocConsumer<CounterBloc, CounterState>(
          listener: (context, state) {},
          builder: (context, state) {
            return Container(
                child: Text(
              state.counter.toString(),
              style: TextStyle(
                  color: Colors.green,
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
            ));
          },
        ),
      ),
    );
  }
}
