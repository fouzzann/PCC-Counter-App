import 'package:counter_app/controllers/counter_controller.dart';
import 'package:counter_app/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterDisplay extends StatelessWidget {
  final CounterController controller;
  
  const CounterDisplay({required this.controller});
  
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: AppColors.surfaceColor,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          Text(
            'Current Count',
            style: TextStyle(
              fontSize: 18,
              color: AppColors.textSecondary,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 8),
          Obx(() => Text(
            '${controller.count}',
            style: TextStyle(
              fontSize: 48,
              color: AppColors.textPrimary,
              fontWeight: FontWeight.bold,
            ),
          )),
        ],
      ),
    );
  }
}