import 'package:example_meedu/app/ui/pages/counter/controller/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_meedu/ui.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Consumer(
          builder: (_, ref, __) {
            final c = ref.watch(counterProvider);
            return Text(
              "${c.counter}",
              style: TextStyle(fontSize: 35),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counterProvider.read.increment();
        },
      ),
    );
  }
}
