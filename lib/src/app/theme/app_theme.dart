
import 'package:flutter/material.dart';

import '../../core/constants/const.dart';

class AppTheme {

  AppTheme({
    required BuildContext context,
  });
  ThemeData getLightThemeData() {
    final ThemeData themeData = ThemeData(
      progressIndicatorTheme: const ProgressIndicatorThemeData(
          color: kPrimaryColor
      ),
      highlightColor: kWhiteColor,
      canvasColor: Colors.white,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      primaryColor: Colors.white,
      brightness: Brightness.light,
      scaffoldBackgroundColor: kWhiteColor,
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: Colors.white, shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0),
          ),
          side: const BorderSide(color: kBlueColorDark),
        ),
      ),

      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: kPrimaryColor,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0),
          ),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: kBlueColorDark,
        ),
      ),

      appBarTheme: const AppBarTheme(
        color: kWhiteColor,
        iconTheme: IconThemeData(color:kWhiteColor),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: kWhiteColor,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: kBlueColorDark,
        unselectedItemColor: kTextGreyColor,
      ),

      textTheme: getTextTheme(const Color(0xff343434)),
    );

    return themeData.copyWith(
      colorScheme: themeData.colorScheme.copyWith(
        secondary: kBlueColorDark,
        primary: kBlueColorLight,
        onPrimary: kTextBlackColor,
     //   secondaryVariant: kSecondaryColor,
      ),
    );
  }

  TextTheme getTextTheme(Color color) {
    return TextTheme(
      displayLarge:TextStyle(
          fontSize: 36,
          fontWeight: FontWeight.bold,
          color: color,
          fontFamily: 'primary'
      ),
      displayMedium: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.w500,
          color: color,
          fontFamily: 'primary'
      ),
      displaySmall: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w500,
          color: color,
          fontFamily: 'primary'
      ),
      headlineMedium: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.w500,
          color: color,
          fontFamily: 'primary'

      ),
      headlineSmall: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          color: color,
          fontFamily: 'primary'
      ),
      titleLarge: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: color,
          fontFamily: 'primary'
      ),
      titleMedium: TextStyle(
          fontSize: 19,
          fontWeight: FontWeight.normal,
          color: color,
          fontFamily: 'secondary'
      ),
      titleSmall: TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.normal,
          color: color,
          fontFamily: 'secondary'

      ),
      bodyLarge: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.normal,
          color: color,
          fontFamily: 'secondary'
      ),
      bodyMedium: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.normal,
          color: color,
          fontFamily: 'secondary'
      ),
      bodySmall: TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.w400,
          color: color,
          fontFamily: 'secondary'
      ),
      labelLarge: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: color,
          fontFamily: 'secondary'

      ),
    );
  }
}
