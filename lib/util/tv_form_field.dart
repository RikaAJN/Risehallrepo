import 'package:risehallrepo/util/scaler/scaler.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TVFormField extends StatefulWidget {
  const TVFormField({
    Key? key,
    this.controller,
    this.hintText,
    this.obscureText = false,
    this.suffixDir,
    this.validator,
    this.onChanged,
    this.maxLength,
    this.keyboardType,
    this.formatters,
    this.onSuffixTap,
  }) : super(key: key);
  final TextEditingController? controller;
  final bool? obscureText;
  final String? hintText;
  final String? suffixDir;
  final int? maxLength;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? formatters;
  final ValueChanged<String>? onChanged;
  final VoidCallback? onSuffixTap;
  final FormFieldValidator<String>? validator;

  @override
  _TVFormFieldState createState() => _TVFormFieldState();
}

class _TVFormFieldState extends State<TVFormField> {
  late FocusNode _focusNode;
  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
  }

  @override
  Widget build(BuildContext context) {
    InputBorder border() => OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            context.scaleY(4),
          ),
          borderSide: BorderSide.none,
        );
    InputBorder focusedBorder() => OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            context.scaleY(4),
          ),
          borderSide: BorderSide(
            width: 1,
            color: Colors.blue,
          ),
        );
    return TextFormField(
      focusNode: _focusNode,
      keyboardType: widget.keyboardType,
      inputFormatters: widget.formatters,
      validator: widget.validator,
      controller: widget.controller,
      maxLength: widget.maxLength,
      obscureText: widget.obscureText!,
      onChanged: widget.onChanged,
      style: const TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 12,
        color: Colors.black,
      ),
      decoration: InputDecoration(
        isDense: true,
        contentPadding: context.insetsSymetric(
          vertical: 20,
          horizontal: 15,
        ),
        hintText: widget.hintText,
        hintStyle: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 12,
          color: Colors.black.withOpacity(0.2),
        ),
        suffixIcon: widget.suffixDir == null
            ? null
            : UnconstrainedBox(
                child: InkWell(
                  onTap: () {
                    if (_focusNode.hasFocus) {
                      _focusNode.unfocus();
                    }
                    widget.onSuffixTap!();
                  },
                  child: SvgPicture.asset(
                    widget.suffixDir!,
                    height: context.scaleY(22),
                  ),
                ),
              ),
        filled: true,
        fillColor: Colors.black.withOpacity(0.02),
        enabledBorder: border(),
        focusedBorder: focusedBorder(),
        errorBorder: border(),
        focusedErrorBorder: focusedBorder(),
      ),
    );
  }
}
