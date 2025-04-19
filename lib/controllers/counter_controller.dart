// file: lib/viewmodels/counter_viewmodel.dart
import 'package:get/get.dart';

class CounterViewModel extends GetxController {
  // Counter value
  final _counter = 0.obs;
  int get counter => _counter.value;

  // Warning message
  final _showWarning = false.obs;
  bool get showWarning => _showWarning.value;

  // Increment counter
  void increment() {
    _counter.value++;
    _showWarning.value = false;
  }

  // Decrement counter
  void decrement() {
    if (_counter.value > 0) {
      _counter.value--;
    } else {
      _showWarning.value = true;
    }
  }

  // Reset warning
  void resetWarning() {
    _showWarning.value = false;
  }
}