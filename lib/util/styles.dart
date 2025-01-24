import 'package:flutter/material.dart';

class Styles {
  Styles._();
}

extension ThemeDataExtensions on ThemeData {
  TextTheme get defaultTheme => textTheme;

  TextStyle? get h3 => defaultTheme.fontSize40?.bold.textHeight(1.2).characterSpacing(-1.25);

  TextStyle? get h4 => defaultTheme.fontSize32?.bold.textHeight(1.25).characterSpacing(-1);

  TextStyle? get h5 => defaultTheme.fontSize24?.bold.textHeight(1.33).characterSpacing(-0.75);

  TextStyle? get h6 => defaultTheme.fontSize20?.bold.textHeight(1.4).characterSpacing(-0.5);
}

extension TextThemeExtensions on TextTheme {
  TextStyle? get fontSize40 => displayLarge;
  TextStyle? get fontSize36 => displayMedium;
  TextStyle? get fontSize32 => displaySmall;
  TextStyle? get fontSize28 => headlineMedium;
  TextStyle? get fontSize24 => headlineSmall;
  TextStyle? get fontSize20 => titleLarge;
  TextStyle? get fontSize18 => titleMedium;
  TextStyle? get fontSize16 => titleSmall;
  TextStyle? get fontSize14 => bodyLarge;
  TextStyle? get fontSize12 => bodyMedium;
}

extension CustomMayaTextStyles on TextStyle {
  //* Colors and Font Sizes
  // TextStyle get transparentColor => copyWith(color: CustomColors.transparentColor);
  // TextStyle get primaryBlackColor => copyWith(color: CustomColors.primaryBlackColor);
  // TextStyle get primaryGreenColor => copyWith(color: CustomColors.primaryGreenColor);
  // TextStyle get primaryWhiteColor => copyWith(color: CustomColors.primaryWhiteColor);
  // TextStyle get white60Color => copyWith(color: CustomColors.primaryWhite60Color);
  // TextStyle get black60Color => copyWith(color: CustomColors.primaryBlack60Color);
  // TextStyle get black72Color => copyWith(color: CustomColors.primaryBlack72Color);
  // TextStyle get grey5Color => copyWith(color: CustomColors.grey5Color);
  // TextStyle get grey4Color => copyWith(color: CustomColors.grey4Color);
  // TextStyle get grey6Color => copyWith(color: CustomColors.grey6Color);
  // TextStyle get errorColor => copyWith(color: CustomColors.errorColor);
  // TextStyle get permissionColor => copyWith(color: CustomColors.permissionBlue);

  //* Font sizes
  TextStyle get fontSize6 => copyWith(fontSize: 6);
  TextStyle get fontSize8 => copyWith(fontSize: 8);
  TextStyle get fontSize10 => copyWith(fontSize: 10);
  TextStyle get fontSize11 => copyWith(fontSize: 11);
  TextStyle get fontSize12 => copyWith(fontSize: 12);
  TextStyle get fontSize13 => copyWith(fontSize: 13);
  TextStyle get fontSize14 => copyWith(fontSize: 14);
  TextStyle get fontSize16 => copyWith(fontSize: 16);
  TextStyle get fontSize17 => copyWith(fontSize: 17);
  TextStyle get fontSize18 => copyWith(fontSize: 18);
  TextStyle get fontSize20 => copyWith(fontSize: 20);
  TextStyle get fontSize22 => copyWith(fontSize: 22);
  TextStyle get fontSize24 => copyWith(fontSize: 24);
  TextStyle get fontSize28 => copyWith(fontSize: 28);
  TextStyle get fontSize32 => copyWith(fontSize: 32);
  TextStyle get fontSize36 => copyWith(fontSize: 36);
  TextStyle get fontSize40 => copyWith(fontSize: 40);
  TextStyle get fontSize48 => copyWith(fontSize: 48);
  TextStyle get fontSize60 => copyWith(fontSize: 60);

  //* Font Weight
  TextStyle get thin => copyWith(fontWeight: FontWeight.w100);
  TextStyle get extraLight => copyWith(fontWeight: FontWeight.w200);
  TextStyle get light => copyWith(fontWeight: FontWeight.w300);
  TextStyle get normal => copyWith(fontWeight: FontWeight.w400);
  TextStyle get medium => copyWith(fontWeight: FontWeight.w500);
  TextStyle get semiBold => copyWith(fontWeight: FontWeight.w600);
  TextStyle get bold => copyWith(fontWeight: FontWeight.w700);
  TextStyle get extraBold => copyWith(fontWeight: FontWeight.w800);
  TextStyle get black => copyWith(fontWeight: FontWeight.w900);

  //* Additional Sizing
  TextStyle textHeight(double height) => copyWith(height: height);
  TextStyle textWeight(FontWeight weight) => copyWith(fontWeight: weight);
  TextStyle characterSpacing(double spacing) => copyWith(letterSpacing: spacing);
}
