import 'package:flutter/material.dart';
import 'font_manager.dart';

// implement the text style method
TextStyle _getTextStyle(
    double fontSize, String fontFamily, FontWeight fontWeight, Color color) {
  return TextStyle(
    fontSize: fontSize,
    fontFamily: fontFamily,
    color: color,
  );
}

// implement the getRegularTextStyle method
TextStyle regularTextStyle(
    {double fontSize = FontSize.small, required Color color}) {
  return _getTextStyle(
    fontSize,
    'Poppins-Regular',
    FontManager.regular,
    color,
  );
}

// implement lightTextStyle method
TextStyle lightTextStyle(
    {double fontSize = FontSize.small, required Color color}) {
  return _getTextStyle(
    fontSize,
    'Poppins-Light',
    FontManager.light,
    color,
  );
}

//implement boldTextStyle method
TextStyle boldTextStyle(
    {double fontSize = FontSize.extraLarge, required Color color}) {
  return _getTextStyle(
    fontSize,
    'Poppins-Bold',
    FontManager.bold,
    color,
  );
}

//implement mediumTextStyle method
TextStyle mediumTextStyle(
    {double fontSize = FontSize.medium, required Color color}) {
  return _getTextStyle(
    fontSize = FontSize.small,
    'Poppins-Medium',
    FontManager.medium,
    color,
  );
}

// implement the semiBoldTextStyle method
TextStyle semiBoldTextStyle(
    {double fontSize = FontSize.large, required Color color}) {
  return _getTextStyle(
    fontSize,
    'Poppins-SemiBold',
    FontManager.semiBold,
    color,
  );
}
