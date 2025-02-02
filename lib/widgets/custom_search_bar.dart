import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../util/colors.dart';
import '../util/styles.dart';

class CustomSearchBar extends StatefulWidget {
  final TextEditingController controller;
  final Function(String)? onTextChanged;
  final Function(String)? onSubmit;
  final String? hintText;
  final TextStyle? hintStyle;
  final TextInputType textInputType;
  final String? semanticLabel;
  final bool isEnabled;

  const CustomSearchBar({
    required this.controller,
    this.onTextChanged,
    this.onSubmit,
    this.hintText,
    this.hintStyle,
    this.semanticLabel,
    this.isEnabled = true,
    this.textInputType = TextInputType.text,
  }) : super();

  @override
  State<CustomSearchBar> createState() => _CustomSearchBarState();
}

class _CustomSearchBarState extends State<CustomSearchBar> {
  final FocusNode _focusNode = FocusNode();

  bool clearButtonVisible = false;

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() {
      setState(() {
        _getFieldBorder();
      });
    });

    widget.controller.addListener(() {
      if (mounted) {
        setState(() {
          clearButtonVisible = widget.controller.text.isNotEmpty;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
            decoration: BoxDecoration(
              border: Border.all(color: _getFieldBorder()),
              color: widget.isEnabled
                  ? CustomColors.primaryWhiteColor
                  : CustomColors.grey2Color,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              children: [
                SvgPicture.asset(
                  'assets/icons/search.svg',
                  width: 20,
                  height: 20,
                ),
                const SizedBox(width: 8),
                Flexible(
                  child: TextFormField(
                    enabled: widget.isEnabled,
                    controller: widget.controller,
                    focusNode: _focusNode,
                    keyboardType: widget.textInputType,
                    textInputAction: TextInputAction.search,
                    style: Theme.of(context).defaultTheme.fontSize16?.semiBold,
                    decoration: InputDecoration(
                      hintText: widget.hintText,
                      hintStyle: widget.hintStyle ??
                          Theme.of(context).defaultTheme.fontSize16?.semiBold,
                      border: Styles.transparentInputBorder(),
                      fillColor: CustomColors.transparentColor,
                      filled: true,
                      focusedBorder: Styles.transparentInputBorder(),
                      enabledBorder: Styles.transparentInputBorder(),
                      disabledBorder: Styles.transparentInputBorder(),
                      hoverColor: CustomColors.transparentColor,
                      contentPadding: EdgeInsets.zero,
                    ),
                    onChanged: widget.onTextChanged,
                    onFieldSubmitted: widget.onSubmit,
                  ),
                ),
                if (clearButtonVisible) ...[
                  const SizedBox(width: 8),
                  IconButton(
                    padding: EdgeInsets.zero,
                    constraints: const BoxConstraints(),
                    onPressed: () {
                      widget.controller.clear();
                      widget.onSubmit?.call('');
                    },
                    icon: SvgPicture.asset(
                      'assets/icons/clear.svg',
                      width: 20,
                      height: 20,
                    ),
                    // icon: const ThemedSvgIcon(
                    //   'assets/icons/clear.svg',
                    // ),
                  ),
                ]
              ],
            ),
          ),
        ),
      ],
    );
  }

  Color _getFieldBorder() {
    if (_focusNode.hasFocus) {
      return CustomColors.grey4Color;
    } else {
      return CustomColors.grey3Color;
    }
  }
}
