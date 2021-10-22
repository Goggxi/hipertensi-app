import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:hipertensi_app/app/core/helper/constant.dart';

class TextFormFieldPrimary extends StatelessWidget {
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final TextStyle? labelStyle;
  final List<TextInputFormatter>? inputFormatters;
  final String? initialValue;
  final String? hintText;
  final String? titleText;
  final String? pass;
  final bool? cek;
  final bool? obscureText;
  final int? minLines;
  final int? maxLines;
  final bool? readOnly;
  final bool? notValidate;
  final Widget? perfix;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final EdgeInsetsGeometry? contentPadding;
  final Function(String)? onChanged;
  final Function(String?)? onSaved;
  final TextInputType? textInputType;
  final TextInputAction? textInputAction;
  final String Function(String?)? validator;

  const TextFormFieldPrimary(
      {Key? key,
      this.controller,
      this.focusNode,
      this.labelStyle,
      this.inputFormatters,
      this.initialValue,
      this.hintText,
      this.titleText,
      this.pass,
      this.cek,
      this.obscureText,
      this.minLines,
      this.maxLines,
      this.prefixIcon,
      this.readOnly,
      this.notValidate = false,
      this.perfix,
      this.suffixIcon,
      this.contentPadding,
      this.onChanged,
      this.onSaved,
      this.textInputType,
      this.validator,
      this.textInputAction})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      readOnly: readOnly ?? false,
      initialValue: initialValue,
      controller: controller,
      focusNode: focusNode,
      minLines: minLines ?? 1,
      maxLines: maxLines ?? 1,
      style: Get.textTheme.bodyText2,
      keyboardType: textInputType,
      textInputAction: textInputAction,
      onChanged: onChanged,
      onSaved: onSaved,
      inputFormatters: inputFormatters,
      obscureText: obscureText ?? false,
      decoration: InputDecoration(
          hintText: hintText,
          labelText: titleText ?? "",
          prefix: perfix,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          // floatingLabelBehavior: FloatingLabelBehavior.never,
          labelStyle: labelStyle,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(width: 0.1, style: BorderStyle.solid),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(
                width: 0.5, style: BorderStyle.solid, color: Color(0xFF1565C0)),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(
                width: 0.1, style: BorderStyle.solid, color: Color(0xFFC62828)),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(
                width: 0.5, style: BorderStyle.solid, color: Color(0xFFC62828)),
          ),
          fillColor: Colors.blueGrey[50],
          filled: true,
          contentPadding: contentPadding ?? EdgeInsets.fromLTRB(10, 12, 10, 12),
          isDense: true),
      cursorColor: kPrimaryColor,
      validator: notValidate == true
          ? null
          : validator ??
              (value) {
                if (textInputType == TextInputType.emailAddress) {
                  if (!GetUtils.isEmail(value!)) {
                    return " Alamat Email tidak valid.";
                  }
                  return null;
                } else if (textInputType == TextInputType.phone) {
                  if (!GetUtils.isPhoneNumber(value!)) {
                    return " Nomor telepon tidak valid.";
                  }
                  return null;
                } else if (textInputType == TextInputType.visiblePassword &&
                    cek == true) {
                  // if (!validatePassword(value!)) {
                  //   return " Password lemah.";
                  // } else
                  if (value!.length < 8) {
                    return " Password terlalu pendek.";
                  } else if (value != pass) {
                    return " Password tidak cocok.";
                  }
                  return null;
                } else if (textInputType == TextInputType.visiblePassword) {
                  if (value!.length < 8) {
                    return " Password terlalu pendek.";
                  }
                  return null;
                } else {
                  if (value!.isEmpty) {
                    return " Tidak boleh kosong.";
                  }
                }
                return null;
              },
    );
  }
}
