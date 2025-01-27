import 'package:flutter/material.dart';
import 'package:sbdv_web/util/colors.dart';

class Styles {
  Styles._();
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: CustomColors.primaryWhiteColor,
    tabBarTheme: const TabBarTheme(
      indicator: BoxDecoration(),
      labelPadding: EdgeInsets.symmetric(horizontal: 4),
      labelColor: CustomColors.primaryBlackColor,
      unselectedLabelColor: CustomColors.grey5Color,
    ),
    textTheme: TextTheme(
      displayLarge: _primaryStyle.fontSize40,
      displayMedium: _primaryStyle.fontSize36,
      displaySmall: _primaryStyle.fontSize32,
      headlineMedium: _primaryStyle.fontSize28,
      headlineSmall: _primaryStyle.fontSize24,
      titleLarge: _primaryStyle.fontSize20,
      titleMedium: _primaryStyle.fontSize18,
      titleSmall: _primaryStyle.fontSize16,
      bodyLarge: _primaryStyle.fontSize14,
      bodyMedium: _primaryStyle.fontSize12,
    ),
    primaryTextTheme: TextTheme(
      displayLarge: _primaryStyle.fontSize40.primaryBlackColor,
      displayMedium: _primaryStyle.fontSize36.primaryBlackColor,
      displaySmall: _primaryStyle.fontSize32.primaryBlackColor,
      headlineMedium: _primaryStyle.fontSize28.primaryBlackColor,
      headlineSmall: _primaryStyle.fontSize24.primaryBlackColor,
      titleLarge: _primaryStyle.fontSize20.primaryBlackColor,
      titleMedium: _primaryStyle.fontSize18.primaryBlackColor,
      titleSmall: _primaryStyle.fontSize16.primaryBlackColor,
      bodyLarge: _primaryStyle.fontSize14.primaryBlackColor,
      bodyMedium: _primaryStyle.fontSize12.primaryBlackColor,
    ),
    checkboxTheme: const CheckboxThemeData(
      side: BorderSide(
        color: CustomColors.grey3Color,
        width: 1,
      ),
    ),
    iconTheme: const IconThemeData(color: null),
    inputDecorationTheme: InputDecorationTheme(
      border: InputBorder.none,
      isDense: true,
      contentPadding: EdgeInsets.all(10),
      fillColor: CustomColors.grey1Color,
      filled: true,
      hintStyle: _primaryStyle.fontSize16.semiBold.copyWith(
        color: CustomColors.grey4Color,
      ),
      focusedBorder: Styles.transparentInputBorder(),
      enabledBorder: Styles.transparentInputBorder(),
      errorBorder: Styles.transparentInputBorder(),
      focusedErrorBorder: Styles.transparentInputBorder(),
    ),
    cardTheme: CardTheme(
      elevation: 0,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        side: const BorderSide(color: CustomColors.grey3Color),
        borderRadius: BorderRadius.circular(16),
      ),
    ),
    appBarTheme: AppBarTheme(
      iconTheme: const IconThemeData(color: CustomColors.primaryBlackColor),
      centerTitle: true,
      color: CustomColors.primaryWhite80Color,
      titleTextStyle: _primaryStyle.bold.fontSize16.primaryBlackColor,
      elevation: 0.0,
    ),
    dividerTheme: const DividerThemeData(
      color: CustomColors.grey3Color,
      thickness: 1.0,
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: CustomColors.scaffoldBackgroundColorDarkMode,
    tabBarTheme: const TabBarTheme(
      indicator: BoxDecoration(),
      labelPadding: EdgeInsets.symmetric(horizontal: 4),
    ),
    checkboxTheme: const CheckboxThemeData(
      side: BorderSide(
        color: CustomColors.grey5Color,
        width: 1,
      ),
    ),
    textTheme: TextTheme(
      displayLarge: _primaryStyle.fontSize40.primaryWhiteColor,
      displayMedium: _primaryStyle.fontSize36.primaryWhiteColor,
      displaySmall: _primaryStyle.fontSize32.primaryWhiteColor,
      headlineMedium: _primaryStyle.fontSize28.primaryWhiteColor,
      headlineSmall: _primaryStyle.fontSize24.primaryWhiteColor,
      titleLarge: _primaryStyle.fontSize20.primaryWhiteColor,
      titleMedium: _primaryStyle.fontSize18.primaryWhiteColor,
      titleSmall: _primaryStyle.fontSize16.primaryWhiteColor,
      bodyLarge: _primaryStyle.fontSize14.primaryWhiteColor,
      bodyMedium: _primaryStyle.fontSize12.primaryWhiteColor,
    ),
    primaryTextTheme: TextTheme(
      displayLarge: _primaryStyle.fontSize40.primaryWhiteColor,
      displayMedium: _primaryStyle.fontSize36.primaryWhiteColor,
      displaySmall: _primaryStyle.fontSize32.primaryWhiteColor,
      headlineMedium: _primaryStyle.fontSize28.primaryWhiteColor,
      headlineSmall: _primaryStyle.fontSize24.primaryWhiteColor,
      titleLarge: _primaryStyle.fontSize20.primaryWhiteColor,
      titleMedium: _primaryStyle.fontSize18.primaryWhiteColor,
      titleSmall: _primaryStyle.fontSize16.primaryWhiteColor,
      bodyLarge: _primaryStyle.fontSize14.primaryWhiteColor,
      bodyMedium: _primaryStyle.fontSize12.primaryWhiteColor,
    ),
    appBarTheme: AppBarTheme(
      iconTheme: const IconThemeData(color: CustomColors.primaryWhiteColor),
      centerTitle: true,
      color: CustomColors.grey9Color,
      titleTextStyle: _primaryStyle.fontSize16.bold.primaryWhiteColor,
      elevation: 0.0,
    ),
    dividerTheme: const DividerThemeData(
      color: CustomColors.grey8Color,
      thickness: 1.0,
    ),
    iconTheme: const IconThemeData(
      color: CustomColors.primaryWhiteColor,
    ),
    inputDecorationTheme: const InputDecorationTheme(
      border: InputBorder.none,
      isDense: true,
      contentPadding: EdgeInsets.all(10),
      fillColor: CustomColors.grey10Color,
      filled: true,
      // focusedBorder: OutlineInputBorder(
      //   borderSide: BorderSide(
      //     color: CustomColors.primaryWhiteColor,
      //   ),
      // ),
    ),
    cardTheme: CardTheme(
      elevation: 0,
      margin: EdgeInsets.zero,
      color: CustomColors.grey8Color,
      shape: RoundedRectangleBorder(
        side: const BorderSide(
          color: CustomColors.grey8Color,
        ),
        borderRadius: BorderRadius.circular(16.0),
      ),
    ),
  );

  //* Base text styles
  static const _primaryStyle = TextStyle(
    fontWeight: FontWeight.normal,
  );

  static OutlineInputBorder transparentInputBorder() {
    return const OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.transparent,
      ),
    );
  }
}

extension ThemeDataExtensions on ThemeData {
  TextTheme get defaultTheme => textTheme;

  TextStyle? get h3 =>
      defaultTheme.fontSize40?.bold.textHeight(1.2).characterSpacing(-1.25);

  TextStyle? get h4 =>
      defaultTheme.fontSize32?.bold.textHeight(1.25).characterSpacing(-1);

  TextStyle? get h5 =>
      defaultTheme.fontSize24?.bold.textHeight(1.33).characterSpacing(-0.75);

  TextStyle? get h6 =>
      defaultTheme.fontSize20?.bold.textHeight(1.4).characterSpacing(-0.5);

  Color get textFieldHintColor {
    return brightness == Brightness.light
        ? CustomColors.grey4Color
        : CustomColors.grey6Color;
  }

  ButtonStyle get blackBigButtonStyle {
    return TextButton.styleFrom(
      foregroundColor: CustomColors.primaryWhiteColor,
      backgroundColor: CustomColors.primaryBlackColor,
      fixedSize: const Size.fromHeight(56),
      textStyle: defaultTheme.fontSize16?.primaryWhiteColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
    );
  }

  ButtonStyle get blackMediumButtonStyle {
    return TextButton.styleFrom(
      foregroundColor: CustomColors.primaryWhiteColor,
      backgroundColor: CustomColors.primaryBlackColor,
      fixedSize: const Size.fromHeight(44),
      textStyle: defaultTheme.fontSize16?.primaryWhiteColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
    );
  }

  ButtonStyle get blackSmallButtonStyle {
    return TextButton.styleFrom(
      foregroundColor: CustomColors.primaryWhiteColor,
      backgroundColor: CustomColors.primaryBlackColor,
      textStyle: defaultTheme.fontSize16?.primaryWhiteColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
    );
  }
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
  TextStyle get transparentColor =>
      copyWith(color: CustomColors.transparentColor);
  TextStyle get primaryBlackColor =>
      copyWith(color: CustomColors.primaryBlackColor);
  TextStyle get primaryWhiteColor =>
      copyWith(color: CustomColors.primaryWhiteColor);
  TextStyle get primaryGreenColor =>
      copyWith(color: CustomColors.primaryGreenColor);
  TextStyle get errorColor => copyWith(color: CustomColors.errorColor);
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
  TextStyle characterSpacing(double spacing) =>
      copyWith(letterSpacing: spacing);
}
