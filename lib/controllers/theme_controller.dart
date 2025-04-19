// file: lib/viewmodels/theme_viewmodel.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ThemeViewModel extends GetxController {
  final _box = GetStorage();
  final _key = 'isDarkMode';
  
  final _isDarkMode = false.obs;
  
  @override
  void onInit() {
    super.onInit();
    _isDarkMode.value = _box.read(_key) ?? false;
  }

  bool get isDarkMode => _isDarkMode.value;

  ThemeMode get themeMode => isDarkMode ? ThemeMode.dark : ThemeMode.light;

  void toggleTheme() {
    _isDarkMode.value = !_isDarkMode.value;
    Get.changeThemeMode(_isDarkMode.value ? ThemeMode.dark : ThemeMode.light);
    _box.write(_key, _isDarkMode.value);
  }
}