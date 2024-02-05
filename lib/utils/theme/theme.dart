import 'package:flutter/material.dart';
import 'package:profile_ui/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:profile_ui/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:profile_ui/utils/theme/custom_themes/text_field_theme.dart';
import 'package:profile_ui/utils/theme/custom_themes/text_theme.dart';

class UIIIAppTheme {
  UIIIAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Halyard',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: UIIITextTheme.lightTextTheme,
    elevatedButtonTheme: UIIIElevatedButtonTeme.lightElevatedButtonTheme,
    outlinedButtonTheme: UIIIOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: UIIITextFormFieldTheme.lightInputDecorationTheme,
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Halyard',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: UIIITextTheme.darkTextTheme,
    elevatedButtonTheme: UIIIElevatedButtonTeme.darkElevatedButtonTheme,
    outlinedButtonTheme: UIIIOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: UIIITextFormFieldTheme.darkInputDecorationTheme,
  );
}
