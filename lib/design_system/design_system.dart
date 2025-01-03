import 'package:flutter/material.dart';

class AppColors {
  static const Color primaryGreen = Color(0xFF00AA13);
  static const Color primaryRed = Color(0xFFEE2737);
  static const Color primaryOrange = Color(0xFFF06400);
  static const Color primaryBlue = Color(0xFF00AED6);
  static const Color purple = Color(0xFF93328E);
  static const Color pink = Color(0xFFDF1995);
  static const Color black = Color(0xFF000000);
  static const Color white = Color(0xFFFFFFFF);

  // Green shades
  static const Color lightGreen = Color(0xFF30B058);
  static const Color greenGojek = Color(0xFF00AA13);
  static const Color green = Color(0xFF006C02);
  static const Color darkGreen = Color(0xFF004901);

  // Greyscale
  static const Color darkGrey = Color(0xFF000000);
  static const Color mediumGrey = Color(0xFF9F9F9F);
  static const Color grey = Color(0xFF727272);
  static const Color lightGrey = Color(0xFFFFFFFF);
}

class AppTextStyles {
  static const TextStyle h1 = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.w600,
    color: AppColors.black,
  );
  static const TextStyle h2 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    color: AppColors.black,
  );
  static const TextStyle h3 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: AppColors.black,
  );
  static const TextStyle h4 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.black,
  );
  static const TextStyle h5 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: AppColors.black,
  );
  static const TextStyle h6 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.black,
  );
  static const TextStyle h7 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w600,
    color: AppColors.black,
  );
  static const TextStyle subhead1 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.black,
  );
  static const TextStyle subhead2 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.black,
  );
  static const TextStyle subhead3 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: AppColors.black,
  );
  static const TextStyle paragraph1 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.black,
  );
  static const TextStyle paragraph2 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.black,
  );
  static const TextStyle paragraph3 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: AppColors.black,
  );
  static const TextStyle paragraph4 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: AppColors.black,
  );
}

class AppButtonStyles {
  static ButtonStyle primaryButton = ElevatedButton.styleFrom(
    backgroundColor: AppColors.green,
    textStyle: AppTextStyles.h4,
    minimumSize: const Size.fromHeight(50), // Tinggi tombol tetap, lebar penuh
  );
  static ButtonStyle secondaryButton = ElevatedButton.styleFrom(
    backgroundColor: AppColors.primaryRed,
    textStyle: AppTextStyles.h5,
  );
}
