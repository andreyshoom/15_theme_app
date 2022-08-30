import 'package:flutter/material.dart';

ThemeData _themeLight = ThemeData.light();

ThemeData themeLight = _themeLight.copyWith(
  textTheme: _textLight(_themeLight.textTheme),
  primaryTextTheme: _textLight(_themeLight.textTheme),
  appBarTheme: AppBarTheme(
    actionsIconTheme: IconThemeData(
      color: Colors.deepOrange[100],
    ),
    color: Colors.black54,
    foregroundColor: Colors.deepOrange[100],
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      shape: MaterialStateProperty.resolveWith<OutlinedBorder>((states) {
        return RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        );
      }),
      foregroundColor: MaterialStateProperty.resolveWith<Color>(
        (states) => Colors.black,
      ),
      backgroundColor: MaterialStateProperty.resolveWith<Color>(
        (states) => Colors.deepOrange[100] as Color,
      ),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    prefixStyle: const TextStyle(
      color: Colors.black54,
    ),
    floatingLabelStyle: TextStyle(color: Colors.deepOrange[100]),
    labelStyle: const TextStyle(
      color: Colors.black54,
    ),
    suffixIconColor: Colors.deepOrange[100],
    enabledBorder: const UnderlineInputBorder(
      borderSide: BorderSide(
        color: Colors.black54,
      ),
    ),
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: Colors.deepOrange[100] as Color,
      ),
    ),
  ),
  progressIndicatorTheme: const ProgressIndicatorThemeData(
    color: Colors.black54,
  ),
  cardTheme: CardTheme(
    clipBehavior: Clip.hardEdge,
    color: Colors.deepOrange[100],
    margin: const EdgeInsets.all(8.0),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: Colors.black54,
    selectedItemColor: Colors.deepOrange[100],
  ),
  chipTheme: ChipThemeData(
    backgroundColor: Colors.black54,
    selectedColor: Colors.deepOrange[100],
    labelStyle: const TextStyle(
      color: Colors.white,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(5),
    ),
    showCheckmark: false,
  ),
  dialogTheme: const DialogTheme(
    backgroundColor: Colors.grey,
  ),
  primaryColorLight: Colors.deepOrange[100],
  primaryColorDark: Colors.deepOrange[100],
);

TextTheme _textLight(TextTheme base) {
  return base.copyWith(
    bodyText2: base.bodyText2?.copyWith(
      color: Colors.black54,
    ),
    headline4: base.headline4?.copyWith(
      color: Colors.black54,
    ),
    subtitle1: base.subtitle1?.copyWith(
      color: Colors.white,
    ),
  );
}
