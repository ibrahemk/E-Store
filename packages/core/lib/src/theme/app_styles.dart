import 'package:flutter/material.dart';

class AppColors {
  // Prevent instantiation
  AppColors._();

  static const Color cardBackground = Color(0xFF1A1A1A);
  static final Color cardShadow = Colors.black.withOpacity(0.1);
  static final Color imageOverlay = Colors.black.withOpacity(0.4);
  static const Color iconWhite = Colors.white;
  static const Color textWhite = Colors.white;
}

class AppTextStyles {
  // Prevent instantiation
  AppTextStyles._();

  static const TextStyle productPrice = TextStyle(
    color: AppColors.textWhite,
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle productTitle = TextStyle(
    color: AppColors.textWhite,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );
}

class AppDecorations {
  AppDecorations._();

  static final BoxDecoration productCard = BoxDecoration(
    borderRadius: BorderRadius.circular(8),
    boxShadow: [
      BoxShadow(
        color: AppColors.cardShadow,
        blurRadius: 10,
        offset: const Offset(0, 4),
      ),
    ],
  );

  static const BoxDecoration productInfo = BoxDecoration(
    color: AppColors.cardBackground,
    borderRadius: BorderRadius.vertical(bottom: Radius.circular(8)),
  );

  static final BoxDecoration iconCircle = BoxDecoration(
    color: AppColors.imageOverlay,
    shape: BoxShape.circle,
  );
}
