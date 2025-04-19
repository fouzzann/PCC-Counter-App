import 'package:counter_app/model/counter_model.dart';
import 'package:get/get.dart';

class CounterController extends GetxController {
  // Create an observable counter model
  final Rx<CounterModel> _counterModel = CounterModel().obs;
  
  // Getter for the counter value
  int get count => _counterModel.value.value;
  
  // Warning message observable
  final RxString warningMessage = ''.obs;
  
  // Increment counter
  void increment() {
    _counterModel.value.value++;
    _counterModel.refresh();
    // Clear warning if present
    if (warningMessage.isNotEmpty) {
      warningMessage.value = '';
    }
  }
  
  // Decrement counter
  void decrement() {
    if (_counterModel.value.value > 0) {
      _counterModel.value.value--;
      _counterModel.refresh();
      // Clear warning if not at zero
      if (warningMessage.isNotEmpty && _counterModel.value.value > 0) {
        warningMessage.value = '';
      }
    } else {
      // Show warning message
      warningMessage.value = 'Cannot go below 0';
    }
  }
}