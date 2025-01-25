import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../util/colors.dart';
import '../util/form/validated_field.dart';
import '../util/styles.dart';

class CustomTextField extends StatefulWidget {
  final Function(String)? onTextChanged;
  final ValidatedField validatedField;
  final TextEditingController? controller;
  final VoidCallback? onTap;
  final String? prefixText;
  final String labelText;
  final TextStyle? labelStyle;
  final String? hintText;
  final TextStyle? hintStyle;
  final String? bottomInfoText;
  final TextInputType textInputType;
  final List<TextInputFormatter>? inputFormatters;
  final FocusNode? focusNode;
  final Widget? trailingIcon;
  final bool isReadOnly;
  final bool shouldShowValidation;
  final bool isAutofocus;
  final String? semanticLabel;
  final bool shouldAllowPasting;

  const CustomTextField({
    required this.labelText,
    required this.validatedField,
    this.controller,
    this.prefixText,
    this.onTextChanged,
    this.labelStyle,
    this.hintText,
    this.hintStyle,
    this.bottomInfoText,
    this.inputFormatters,
    this.textInputType = TextInputType.text,
    this.shouldShowValidation = false,
    this.isReadOnly = false,
    this.focusNode,
    this.onTap,
    this.trailingIcon,
    this.isAutofocus = false,
    this.semanticLabel,
    this.shouldAllowPasting = true,
  }) : super();

  @override
  _CustomTextFormFieldState createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextField> {
  late FocusNode _focusNode;
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _focusNode = widget.focusNode ?? FocusNode();
    _focusNode.addListener(() {
      setState(() {
        _getFieldBorder();
      });
    });
    final initialValue = widget.validatedField.toString();
    _controller = widget.controller ??
        TextEditingController(
          text: initialValue,
        );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.only(
            top: 18,
            left: 24,
            right: 8,
          ),
          decoration: BoxDecoration(
            border: Border.all(color: _getFieldBorder()),
            color: CustomColors.grey1Color,
            borderRadius: BorderRadius.circular(16),
          ),
          child: TextFormField(
            obscureText: widget.textInputType == TextInputType.visiblePassword,
            enableInteractiveSelection: widget.shouldAllowPasting && !widget.isReadOnly,
            autofocus: widget.isAutofocus,
            readOnly: widget.isReadOnly,
            controller: _controller,
            focusNode: _focusNode,
            keyboardType: widget.textInputType,
            style: Theme.of(context).defaultTheme.fontSize16?.semiBold.primaryBlackColor,
            decoration: InputDecoration(
              label: Text(widget.labelText),
              labelStyle: widget.labelStyle ??
                  Theme.of(context).defaultTheme.fontSize12?.semiBold.primaryGreenColor.copyWith(height: 2),
              fillColor: CustomColors.grey1Color,
              filled: true,
              hintText: widget.hintText,
              hintStyle: widget.hintStyle ??
                  Theme.of(context).defaultTheme.fontSize16?.semiBold.copyWith(
                        color: Theme.of(context).textFieldHintColor,
                      ),
              floatingLabelBehavior: FloatingLabelBehavior.always,
              hoverColor: CustomColors.transparentColor,
              prefixText: _controller.text.isEmpty ? null : widget.prefixText,
              contentPadding: const EdgeInsets.all(0.0),
              suffixIcon: Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: widget.trailingIcon ?? _buildErrorIcon(),
              ),
            ),
            inputFormatters: widget.inputFormatters,
            onChanged: widget.onTextChanged,
            onTap: widget.onTap,
          ),
        ),
        if (!widget.validatedField.isValid() && widget.shouldShowValidation) ...[
          Padding(
            padding: const EdgeInsets.only(
              top: 8,
              right: 24,
              left: 24,
            ),
            child: Text(
              widget.validatedField.validationMessage!,
              style: Theme.of(context).defaultTheme.fontSize12?.semiBold.errorColor,
            ),
          )
        ],
        // if (widget.bottomInfoText != null && widget.validatedField.isValid())
        //   Padding(
        //     padding: const EdgeInsets.only(
        //       top: 8,
        //       right: 24,
        //       left: 24,
        //     ),
        //     child: AccessibilityIdTag.container(
        //       label:
        //           '${widget.semanticLabel}-${SemanticLabels.commonTextFieldHint}',
        //       child: Text(
        //         widget.bottomInfoText!,
        //         style: Theme.of(context)
        //             .jeko
        //             .fontSize12!
        //             .semiBold
        //             .grey5Color
        //             .textHeight(1.3),
        //       ),
        //     ),
        //   ),
      ],
    );
  }

  Widget _buildErrorIcon() {
    return !widget.validatedField.isValid() && widget.shouldShowValidation
        ? Padding(
            padding: const EdgeInsets.only(
              left: 4,
              right: 16,
            ),
            child: SvgPicture.asset('assets/icons/icon_error.svg'),
          )
        : const SizedBox.shrink();
  }

  Color _getFieldBorder() {
    if (widget.validatedField.isValid() || !widget.shouldShowValidation) {
      if (_focusNode.hasFocus) {
        return CustomColors.grey1Color;
      } else {
        return Colors.transparent;
      }
    } else {
      return CustomColors.errorColor;
    }
  }
}
