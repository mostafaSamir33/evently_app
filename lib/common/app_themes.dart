import 'package:evently/common/app_colors.dart';
import 'package:evently/common/custom_text_styles.dart';
import 'package:flutter/material.dart';

class AppThemes {
  static final ThemeData lightTheme = ThemeData(
      hoverColor: AppColors.grey,
      splashColor: AppColors.grey,
      dividerColor: AppColors.black,
      dividerTheme: DividerThemeData(color: AppColors.mainColor),
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(seedColor: AppColors.mainColor),
      scaffoldBackgroundColor: AppColors.secLightColor,
      textTheme: const TextTheme(
          bodySmall: CustomTextStyles.style14w400Black,
          bodyMedium: CustomTextStyles.style16w400Black,
          bodyLarge: CustomTextStyles.style18w400Black,
          labelSmall: CustomTextStyles.style14w500Black,
          labelMedium: CustomTextStyles.style16w500Black,
          labelLarge: CustomTextStyles.style18w500Black,
          titleSmall: CustomTextStyles.style14w700Black,
          titleMedium: CustomTextStyles.style16w700Black,
          titleLarge: CustomTextStyles.style18w700Black),
      appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          titleTextStyle: TextStyle(
              fontFamily: 'Rag',
              fontSize: 22,
              fontWeight: FontWeight.w400,
              color: AppColors.mainColor),
          iconTheme: IconThemeData(color: AppColors.mainColor)));

  //
  static final ThemeData darkTheme = ThemeData(
      hoverColor: AppColors.mainColor,
      splashColor: AppColors.offWhite,
      dividerColor: AppColors.mainColor,
      dividerTheme: DividerThemeData(color: AppColors.mainColor),
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(seedColor: AppColors.mainColor),
      scaffoldBackgroundColor: AppColors.secDarkColor,
      textTheme: const TextTheme(
          bodySmall: CustomTextStyles.style14w400White,
          bodyMedium: CustomTextStyles.style16w400White,
          bodyLarge: CustomTextStyles.style18w400White,
          labelSmall: CustomTextStyles.style14w500White,
          labelMedium: CustomTextStyles.style16w500White,
          labelLarge: CustomTextStyles.style18w500White,
          titleSmall: CustomTextStyles.style14w700White,
          titleMedium: CustomTextStyles.style16w700White,
          titleLarge: CustomTextStyles.style18w700White),
      appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          titleTextStyle: TextStyle(
              fontFamily: 'Rag',
              fontSize: 22,
              fontWeight: FontWeight.w400,
              color: AppColors.mainColor),
          iconTheme: IconThemeData(color: AppColors.mainColor)));
}
