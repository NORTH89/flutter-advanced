import 'package:flutter/material.dart';
import 'font_manager.dart';

// implement the text style method
TextStyle _getTextStyle(double fontSize, String fontFamily,FontWeight fontWeight, Color color) {
  return TextStyle(
    fontSize: fontSize,
    fontFamily: fontFamily,
    color: color,
  );
}
// implement the getRegularTextStyle method
TextStyle regularTextStyle(double fontSize,fontWeight, Color color) {
  return _getTextStyle(
    fontSize = FontSize.small,
    'Montserrat-Regular',
    fontWeight = FontManager.regular,
    color,
  );
}
// implement lightTextStyle method
TextStyle lightTextStyle(double fontSize, Color color) {
  return _getTextStyle(
    fontSize = FontSize.small,
    'Montserrat-Light',
    FontManager.light,
    color,
  );
}
//implement boldTextStyle method
TextStyle boldTextStyle(double fontSize, Color color) {
  return _getTextStyle(
    fontSize = FontSize.small,
    'Montserrat-Bold',
    FontManager.bold,
    color,
  );
}
//implement mediumTextStyle method
TextStyle mediumTextStyle(double fontSize, Color color) {
  return _getTextStyle(
    fontSize = FontSize.small,
    'Montserrat-Medium',
    FontManager.medium,
    color,
  );
}

// implement the semiBoldTextStyle method
TextStyle semiBoldTextStyle(double fontSize, Color color) {
  return _getTextStyle(
    fontSize = FontSize.small,
    'Montserrat-SemiBold',
    FontManager.semiBold,
    color,
  );
}