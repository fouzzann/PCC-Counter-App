import 'package:counter_app/controllers/counter_controller.dart';
import 'package:counter_app/controllers/theme_controller.dart';
import 'package:counter_app/pages/widgets/counter_button_widget.dart';
import 'package:counter_app/pages/widgets/counter_display_widget.dart';
import 'package:counter_app/pages/widgets/warning_message.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterScreen extends StatelessWidget {
  final CounterViewModel _viewModel = Get.find();
  final ThemeViewModel _themeViewModel = Get.find();

  CounterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Theme.of(context).primaryColor.withOpacity(0.1),
              Theme.of(context).colorScheme.secondary.withOpacity(0.1),
            ],
          ),
        ),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(flex: 2),
              CounterDisplay(),
              const SizedBox(height: 24),
              WarningMessage(),
              const Spacer(flex: 1),
              ActionButtons(),
              const SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      title: const Text('Modern Counter'),
      elevation: 0,
      centerTitle: true,
      actions: [
        Obx(() => IconButton(
          icon: Icon(
            _themeViewModel.isDarkMode ? Icons.light_mode : Icons.dark_mode,
          ),
          onPressed: () => _themeViewModel.toggleTheme(),
        )),
      ],
    );
  }
}