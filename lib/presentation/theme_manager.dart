import 'package:flutter/material.dart';
import 'package:flutter_advanced/presentation/color_manager.dart';
import 'package:flutter_advanced/presentation/font_manager.dart';
import 'package:flutter_advanced/presentation/styles_manager.dart';
import 'package:flutter_advanced/presentation/values_manager.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    // Define colors of the application
    primaryColor: ColorManager.primaryColor,
    primaryColorLight: ColorManager.primaryOpacity70,
    primaryColorDark: ColorManager.darkPrimary,
    disabledColor: ColorManager.grey1,
    splashColor: ColorManager.primaryOpacity70, // used for disabled buttons
    colorScheme:
        ColorScheme.fromSwatch().copyWith(secondary: ColorManager.grey),

    // app bar theme
    appBarTheme: AppBarTheme(
      centerTitle: true,
      color: ColorManager.primaryOpacity70,
      elevation: AppSize.small,
      shadowColor: ColorManager.primaryOpacity70,
      titleTextStyle: regularTextStyle(
        fontSize: FontSize.small,
        color: ColorManager.white,
      ),
    ),

    // card view theme
    cardTheme: CardTheme(
      color: ColorManager.white,
      elevation: AppSize.small,
      margin: EdgeInsets.all(10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
    // button theme

    // text theme

    // input decoration theme
  );
}
