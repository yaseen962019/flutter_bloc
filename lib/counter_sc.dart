

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_state/logic/counter_cubit.dart';
import 'package:flutter_bloc_state/logic/counter_state.dart';

class Counter_sc extends StatelessWidget {
  const Counter_sc({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(

      create:(context)=>Countercubit(),
      child: BlocBuilder<Countercubit,Counterstate>(
        builder:(context,state){
          return Scaffold(
            appBar: AppBar(

              backgroundColor: Theme.of(context).colorScheme.inversePrimary,

              title: Text('counter'),
            ),
            body: Center(

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    'You have pushed the button this many times:',
                  ),
                  Text(
                    '${BlocProvider.of<Countercubit>(context).counter}',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ],
              ),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed:BlocProvider.of<Countercubit>(context).incrementCounter,
              tooltip: 'Increment',
              child: const Icon(Icons.add),
            ),
          );
        }

      ),
    );
  }
}
