// file: lib/main.dart
import 'package:counter_app/controllers/counter_controller.dart';
import 'package:counter_app/controllers/theme_controller.dart';
import 'package:counter_app/pages/views/counter_screen.dart';
import 'package:counter_app/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Initialize controllers
    final themeViewModel = Get.put(ThemeViewModel());
    Get.put(CounterViewModel());

    return GetMaterialApp(
      title: 'Modern Counter',
      theme: ThemeConfig.lightTheme,
      darkTheme: ThemeConfig.darkTheme,
      themeMode: themeViewModel.themeMode,
      home: CounterScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}