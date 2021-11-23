import 'package:flutter/material.dart';
import 'package:hipertensi_app/app/core/helper/constant.dart';

class ButtonPrimary extends StatelessWidget {
  final Function()? onPressed;
  final String? title;
  final Color? primary;
  final Color? onPrimary;
  final Color? shadowColor;
  final BorderSide? side;
  final VisualDensity? visualDensity;
  final EdgeInsetsGeometry? padding;

  const ButtonPrimary(
      {Key? key,
      this.onPressed,
      this.title,
      this.onPrimary,
      this.shadowColor,
      this.primary,
      this.side,
      this.visualDensity,
      this.padding})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        child: Text(title ?? "Title", style: kSubTextStyle.copyWith(color: onPrimary)),
        style: ElevatedButton.styleFrom(
            primary: primary ?? kPrimaryColor,
            onPrimary: onPrimary,
            shadowColor: shadowColor,
            visualDensity: visualDensity,
            side: side,
            padding: padding ?? EdgeInsets.fromLTRB(10, 12, 10, 12)));
  }
}