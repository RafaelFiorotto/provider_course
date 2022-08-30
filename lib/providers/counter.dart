import 'package:flutter/cupertino.dart';

class CounterState {
  int _value = 0;

  void increment() => _value++;
  void decrement() => _value--;
  int get value => _value;

  bool diff(CounterState old) {
    return old._value != _value;
  }
}

class CounterProvider extends InheritedWidget {
  final CounterState state = CounterState();
  CounterProvider({Key? key, required Widget child})
      : super(key: key, child: child);

  static CounterProvider? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<CounterProvider>();
  }

  @override
  bool updateShouldNotify(CounterProvider oldWidget) {
    return oldWidget.state.diff(state);
  }
}




// class CounterProviders extends InheritedWidget {
//   CounterProviders({Key? key, required this.child}) : super(key: key, child: child);

//   final Widget child;

//   static CounterProviders? of(BuildContext context) {
//     return context.dependOnInheritedWidgetOfExactType<CounterProviders>();
//   }

//   @override
//   bool updateShouldNotify(CounterProviders oldWidget) {
//     return true;
//   }
// }
