import 'package:control_style/control_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:grocery_delivery_mobile_app/resources/color_resource.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? textEditingController;
  final String labelText;
  final TextStyle labelStyle;
  final String hintText;
  final TextStyle hintStyle;
  final String? errorText;
  final TextStyle? errorStyle;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final bool obsureText;
  final String? Function(String?)? validator;
  final Color? filledColor;
  final bool useBorderSide;
  final bool enabled;
  final int maxLines;
  final bool collapsedInputDecoration;
  final TextAlign textAlign;
  final TextInputType? textInputType;
  final List<TextInputFormatter>? inputTypeFormatters;
  final Function(String?)? onSubmitted;
  final Function(String?)? onChanged;
  final double? iconSquareSize;
  final double radius;
  final double heightTextField;

  CustomTextField({
    required this.textEditingController,
    required this.labelText,
    required this.labelStyle,
    required this.hintText,
    required this.hintStyle,
    required this.validator,
    required this.heightTextField,
    this.suffixIcon,
    this.prefixIcon,
    this.obsureText = false,
    this.filledColor,
    this.useBorderSide = false,
    this.enabled = true,
    this.maxLines = 1,
    this.collapsedInputDecoration = false,
    this.textAlign = TextAlign.left,
    this.textInputType,
    this.inputTypeFormatters,
    this.onSubmitted,
    this.onChanged,
    this.errorText,
    this.errorStyle,
    this.iconSquareSize,
    this.radius = 8,
   
  });

  @override
  Widget build(BuildContext context) {
    const defaultContentPadding = EdgeInsets.symmetric(
      vertical: 12,
      horizontal: 16,
    );

    final double iconSquareSizeFinal = iconSquareSize ?? 24;

    final double leftContentPadding = defaultContentPadding.left;
    final double rightContentPadding = defaultContentPadding.right;

    // gap between prefix/suffix icon & input field
    final double iconToInputFieldGap = 10;

    final defaultDecoratedInputBorder = DecoratedInputBorder(
      shadow: const [
        BoxShadow(
          color: Colors.black12,
          blurRadius: 12,
        )
      ],
      child: OutlineInputBorder(
        borderRadius: BorderRadius.circular(radius),
        borderSide: useBorderSide
            ? const BorderSide(width: 1.5, color: whiteOpacity6)
            : BorderSide.none,
      ),
    );

    final defaultErrorDecoratedInputBorder = DecoratedInputBorder(
      shadow: const [
        BoxShadow(
          color: Colors.black12,
          blurRadius: 12,
        )
      ],
      child: OutlineInputBorder(
        borderRadius: BorderRadius.circular(radius),
        borderSide: useBorderSide
            ? BorderSide(
                width: 1.5,
                color: errorText != null ? borderError : borderActive)
            : BorderSide.none,
      ),
    );

    return TextFormField(
      obscureText: obsureText,
      inputFormatters: inputTypeFormatters,
      keyboardType: textInputType,
      style: TextStyle(
          color: Colors.white, fontSize: 5, fontWeight: FontWeight.w500),
      enabled: enabled,
      textAlign: textAlign,
      controller: textEditingController,
      maxLines: maxLines,
      decoration: collapsedInputDecoration
          ? InputDecoration.collapsed(
              floatingLabelBehavior: FloatingLabelBehavior.never,
              filled: true,
              fillColor: filledColor ?? Color(0xFF253D42),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(radius),
                borderSide: useBorderSide
                    ? const BorderSide(width: 1.5, color: whiteOpacity6)
                    : BorderSide.none,
              ),
              hintText: hintText,
              hintStyle: hintStyle,
            )
          : InputDecoration(
              contentPadding: const EdgeInsets.symmetric(vertical: 4),
              floatingLabelBehavior: FloatingLabelBehavior.never,
              filled: true,
              fillColor: filledColor ?? Color(0xFF253D42),
              border: defaultDecoratedInputBorder,
              enabledBorder: defaultDecoratedInputBorder,
              disabledBorder: defaultDecoratedInputBorder,
              focusedBorder: defaultErrorDecoratedInputBorder,
              focusedErrorBorder: defaultErrorDecoratedInputBorder,
              labelText: labelText,
              labelStyle: labelStyle,
              hintText: hintText,
              hintStyle: hintStyle,
              errorText: errorText,
              errorStyle: errorStyle,
              suffixIcon: suffixIcon,
              // suffixIconConstraints: BoxConstraints.tight(
              //   const Size(30, 20),
              // ),
              suffixIconConstraints: BoxConstraints.tight(
                Size(
                  [
                    rightContentPadding,
                    if (suffixIcon != null) ...[
                      if (suffixIcon != null) iconSquareSizeFinal,
                      iconToInputFieldGap,
                    ]
                  ].reduce((value, element) => value + element),
                  iconSquareSizeFinal + 12,
                ),
              ),
              prefixIcon: prefixIcon,
            ),
      validator: validator,
      onFieldSubmitted: onSubmitted,
      onChanged: onChanged,
    );
  }
}
