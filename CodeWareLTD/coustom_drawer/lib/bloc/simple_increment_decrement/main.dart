import 'package:coustom_drawer/bloc/simple_increment_decrement/counter_bloc.dart';
import 'package:coustom_drawer/bloc/simple_increment_decrement/counter_event.dart';
import 'package:coustom_drawer/bloc/simple_increment_decrement/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterBloc(),
      child: MaterialApp(
        title: 'Block Demo',
        home: HomePageForBloc(),
      ),
    );
  }
}

class HomePageForBloc extends StatefulWidget {
  const HomePageForBloc({Key? key}) : super(key: key);

  @override
  State<HomePageForBloc> createState() => _HomePageForBlocState();
}

class _HomePageForBlocState extends State<HomePageForBloc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo bloc'),
      ),
      body: BlocBuilder<CounterBloc, CounterState>(
        builder: (context, state) {
          if (state is CounterInit) {
            return view(context, 0);
          }
          if (state is CounterUpdate) {
            return view(context, state.counter);
          }
          return Container();
        },
      ),
    );
  }

  Widget view(BuildContext context, int value) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            value.toString(),
            style: TextStyle(fontSize: 20),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              FloatingActionButton(
                onPressed: () {
                  context.read<CounterBloc>().add(CounterIncrese());
                },
                child: Icon(Icons.add),
              ),
              FloatingActionButton(
                onPressed: () {
                  context.read<CounterBloc>().add(CounterDecrese());
                },
                child: Icon(Icons.minimize),
              )
            ],
          ),
        ],
      ),
    );
  }
}
