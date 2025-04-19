import 'package:counter_app/controllers/counter_controller.dart';
import 'package:counter_app/pages/widgets/counter_button_widget.dart';
import 'package:counter_app/pages/widgets/counter_display_widget.dart';
import 'package:counter_app/pages/widgets/warning_message.dart';
import 'package:counter_app/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterPage extends StatelessWidget {
  final CounterController controller = Get.put(CounterController());
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App', style: TextStyle(color: Colors.white)),
        backgroundColor: AppColors.primaryColor,
        centerTitle: true,
      ),
      body: Container(
        color: AppColors.backgroundColor,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Counter display
              CounterDisplay(controller: controller),
              
              SizedBox(height: 16),
              
              // Counter buttons
              CounterButtons(controller: controller),
              
              SizedBox(height: 24),
              
              // Warning message
              WarningMessage(controller: controller),
            ],
          ),
        ),
      ),
    );
  }
}