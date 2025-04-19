// file: lib/utils/app_colors.dart
import 'package:flutter/material.dart';

class AppColors {
  // Light Mode Colors
  static const Color lightPrimary = Color(0xFF6200EE);
  static const Color lightSecondary = Color(0xFF03DAC6);
  static const Color lightBackground = Color(0xFFFFFFFF);
  static const Color lightSurface = Color(0xFFF5F5F5);
  static const Color lightText = Color(0xFF000000);
  static const Color lightTextSecondary = Color(0xFF757575);
  static const Color lightError = Color(0xFFB00020);

  // Dark Mode Colors
  static const Color darkPrimary = Color(0xFFBB86FC);
  static const Color darkSecondary = Color(0xFF03DAC6);
  static const Color darkBackground = Color(0xFF121212);
  static const Color darkSurface = Color(0xFF1E1E1E);
  static const Color darkText = Color(0xFFFFFFFF);
  static const Color darkTextSecondary = Color(0xFFBDBDBD);
  static const Color darkError = Color(0xFFCF6679);

  // Gradient Colors
  static const List<Color> primaryGradient = [
    Color(0xFF6200EE),
    Color(0xFF3700B3),
  ];

  static const List<Color> darkPrimaryGradient = [
    Color(0xFFBB86FC),
    Color(0xFF7B1FA2),
  ];
}