import 'package:risehallrepo/util/scaler/scaler.dart';
import 'package:flutter/material.dart';

import '../enum/button_type.dart';

class TVButton extends StatefulWidget {
  const TVButton({
    Key? key,
    this.buttonType = ButtonType.primary,
    required this.title,
    required this.onTap,
  }) : super(key: key);
  final ButtonType buttonType;
  final String title;
  final Function onTap;

  @override
  _TVButtonState createState() => _TVButtonState();
}

class _TVButtonState extends State<TVButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => widget.onTap(),
      child: Container(
        width: context.width,
        padding: context.insetsSymetric(
          vertical: 20,
        ),
        decoration: BoxDecoration(
          color: widget.buttonType == ButtonType.primary
              ? Colors.blue
              : Colors.black.withOpacity(0.1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            widget.title,
            style: TextStyle(
              color: widget.buttonType == ButtonType.primary
                  ? Colors.white
                  : Colors.black,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
