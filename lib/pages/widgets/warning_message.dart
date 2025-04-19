import 'package:counter_app/controllers/counter_controller.dart';
import 'package:counter_app/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WarningMessage extends StatelessWidget {
  final CounterController controller;
  
  const WarningMessage({required this.controller});
  
  @override
  Widget build(BuildContext context) {
    return Obx(() => AnimatedOpacity(
      opacity: controller.warningMessage.isEmpty ? 0.0 : 1.0,
      duration: Duration(milliseconds: 300),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          color: AppColors.warning.withOpacity(0.2),
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: AppColors.warning, width: 1),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.warning_amber_rounded, color: AppColors.warning),
            SizedBox(width: 8),
            Text(
              controller.warningMessage.value,
              style: TextStyle(
                fontSize: 16,
                color: AppColors.textPrimary,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    ));
  }
}