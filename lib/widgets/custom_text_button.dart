import 'package:flutter/material.dart';
import 'package:sbdv_web/util/styles.dart';

enum CustomButtonStyle {
  blackBig,
  blackMedium,
  blackSmall,
}

extension GetCustomButtonStyles on CustomButtonStyle {
  ButtonStyle getButtonStyle(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    switch (this) {
      case CustomButtonStyle.blackBig:
        return themeData.blackBigButtonStyle;
      case CustomButtonStyle.blackMedium:
        return themeData.blackMediumButtonStyle;
      case CustomButtonStyle.blackSmall:
        return themeData.blackSmallButtonStyle;
    }
  }
}

class RoundedTextButton extends StatelessWidget {
  final Widget child;
  final bool enabled;
  final double? height;
  final CustomButtonStyle style;
  final EdgeInsetsGeometry? padding;
  final GestureTapCallback? onPressed;

  const RoundedTextButton({
    required this.onPressed,
    required this.child,
    this.style = CustomButtonStyle.blackBig,
    this.enabled = true,
    this.padding,
    this.height,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      padding: padding ?? const EdgeInsets.all(0),
      child: Opacity(
        opacity: onPressed != null ? 1 : 0.4,
        child: TextButton(
          style: style.getButtonStyle(context),
          onPressed: enabled ? () async => onPressed?.call() : null,
          child: Align(
            alignment: Alignment.center,
            child: child,
          ),
        ),
      ),
    );
  }
}
