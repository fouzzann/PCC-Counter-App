import 'package:counter_app/controllers/counter_controller.dart';
import 'package:counter_app/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CounterButtons extends StatelessWidget {
  final CounterController controller;
  
  const CounterButtons({required this.controller});
  
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Decrement button
        ElevatedButton(
          onPressed: controller.decrement,
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.secondaryVariant,
            foregroundColor: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.remove),
              SizedBox(width: 8),
              Text('Decrease', style: TextStyle(fontSize: 16)),
            ],
          ),
        ),
        
        SizedBox(width: 20),
        
        // Increment button
        ElevatedButton(
          onPressed: controller.increment,
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primaryColor,
            foregroundColor: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.add),
              SizedBox(width: 8),
              Text('Increase', style: TextStyle(fontSize: 16)),
            ],
          ),
        ),
      ],
    );
  }
}