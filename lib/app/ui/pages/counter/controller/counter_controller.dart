import 'package:flutter_meedu/meedu.dart';

class CounterController extends SimpleNotifier {
  int counter = 0;

  CounterController() {
    print("👅");
  }
  void increment() {
    counter++;
    notify(); //esto es para actualizar la vista
  }
}
