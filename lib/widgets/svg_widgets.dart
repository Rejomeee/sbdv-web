// coverage:ignore-file
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

/// Svg Icons that changes color based on theme.
///
/// Light mode uses the asset color
///
/// Dark mode changes the icon color to white
class ThemedSvgIcon extends StatelessWidget {
  final String iconAsset;
  final double? iconSize;
  final double? height;
  final double? width;

  /// Use when you need to override color for both light and dark mode
  ///
  /// Consider using SvgPicture.asset instead
  ///
  /// Usually used when parent is a reusable widget also
  final Color? colorOverride;

  const ThemedSvgIcon(
    this.iconAsset, {
    Key? key,
    this.iconSize,
    this.colorOverride,
    this.height,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      iconAsset,
      height: height ?? iconSize,
      width: width ?? iconSize,
      colorFilter: colorOverride != null
          ? ColorFilter.mode(colorOverride as Color, BlendMode.srcIn)
          : ColorFilter.mode(Theme.of(context).iconTheme.color as Color, BlendMode.srcIn),
      // package: Strings.packageName,
    );
  }
}
