import 'package:flutter/material.dart';
import 'package:flutter_advanced/presentation/resources/color_manager.dart';
import 'package:flutter_advanced/presentation/resources/font_manager.dart';
import 'package:flutter_advanced/presentation/resources/styles_manager.dart';
import 'package:flutter_advanced/presentation/resources/values_manager.dart';

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
    buttonTheme: ButtonThemeData(
      buttonColor: ColorManager.primaryColor,
      textTheme: ButtonTextTheme.primary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
    ),

    // elevated button theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        textStyle: WidgetStateProperty.all<TextStyle>(
          regularTextStyle(
            fontSize: FontSize.small,
            color: ColorManager.white,
          ),
        ),
        backgroundColor:
            WidgetStateProperty.all<Color>(ColorManager.primaryColor),
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    ),

    // text theme
    textTheme: TextTheme(
      headlineLarge: semiBoldTextStyle(
        color: ColorManager.darkGrey,
        fontSize: FontSize.extraLarge,
      ),
      headlineMedium: mediumTextStyle(
        color: ColorManager.lightGrey,
        fontSize: FontSize.large,
      ),
      headlineSmall: regularTextStyle(
        color: ColorManager.grey1,
        fontSize: FontSize.medium,
      ),
      bodySmall: regularTextStyle(
        color: ColorManager.grey,
        fontSize: FontSize.small,
      ),
    ),

    // input decoration theme
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: EdgeInsets.all(AppPadding.small),
      // hint style
      hintStyle: regularTextStyle(
        fontSize: FontSize.small,
        color: ColorManager.grey1,
      ),
      // label style
      labelStyle: mediumTextStyle(
        fontSize: FontSize.small,
        color: ColorManager.darkGrey,
      ),
      //error style
      errorStyle: regularTextStyle(
        fontSize: FontSize.small,
        color: ColorManager.error,
      ),
      // focused border
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: BorderSide(
          color: ColorManager.primaryColor,
          width: AppSize.small,
        ),
      ),
      // enabled border
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: BorderSide(
          color: ColorManager.grey1,
          width: AppSize.small,
        ),
      ),

      // error border
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: BorderSide(
          color: ColorManager.error,
          width: AppSize.small,
        ),
      ),

      // focused error border
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: BorderSide(
          color: ColorManager.primaryColor,
          width: AppSize.small,
        ),
      ),
    ),
  );
}
