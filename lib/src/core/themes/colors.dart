import 'package:flutter/material.dart';

/// ==========================================================
/// APPLICATION COLOR PALETTE
/// ==========================================================
///
/// Centralized definition of all colors used across the app.
/// Makes theme management and color changes easier.
class AppColors {
  // ----------------------------
  // Backgrounds
  // ----------------------------
  static const Color mainBG = Color(0xFFF6F6F6); // Default app background

  // ----------------------------
  // Text Colors
  // ----------------------------
  static const Color textPrimary = Color(0xFF082438);   // Main text color
  static const Color textSecondary = Color(0xFF797979); // Secondary / muted text

  // ----------------------------
  // General UI Colors
  // ----------------------------
  static const Color gray = Color(0xFF797979); // Generic gray
  static const Color black = Color(0xFF222222); // Deep black
  static const Color primary = Color(0xFFFFBB38); // Primary brand color
  static const Color red = Color(0xFFDF2222);     // Error / warning color
}