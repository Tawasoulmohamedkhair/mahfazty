import 'package:flutter/material.dart';
import 'package:mahfazty/core/theming/fonts.dart';
import 'package:mahfazty/core/theming/mycolors.dart';

class MyTextFormfield extends StatelessWidget {
  final String hintText;
  final Widget? suffexicon;
  final bool isobsucre;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  const MyTextFormfield(
      {super.key,
      required this.hintText,
      this.suffexicon,
      required this.isobsucre,
      this.controller,
      this.validator});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      controller: controller,
      obscureText: isobsucre,
      style: FontsHelper.fonts18Boldgrey,
      decoration: InputDecoration(
        suffixIcon: suffexicon,
        hintText: hintText,
        hintStyle: FontsHelper.fonts18Boldgrey,
        filled: true,
        fillColor: MyColors.greycolor,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }
}
