import 'package:flutter/material.dart';
import 'package:web_dasher/controllers/utills/app_colors.dart';
import 'package:web_dasher/controllers/utills/app_textStyles.dart';

class SearchCustomTextFormField extends StatelessWidget {
  final String hintText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final bool obscureText;
  bool? isBorder;
  final TextInputType keyboardType;
  final VoidCallback? onSuffixIconPressed;
  TextEditingController? controller;
  void Function(String)? onChanged;
  bool? isPrefix;

  SearchCustomTextFormField({super.key, required this.hintText, this.suffixIcon, this.prefixIcon, this.obscureText = false, this.keyboardType = TextInputType.text, this.onSuffixIconPressed, this.controller, this.onChanged, this.isPrefix, this.isBorder});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      controller: controller,
      cursorColor: AppColors.primaryColor,
      obscureText: obscureText,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        prefixIcon: isPrefix ?? false ? Transform.scale(scale: 0.4, child: prefixIcon) : null,
        hintText: hintText,
        hintStyle: TextStyle(fontSize: 10, fontWeight: FontWeight.w400, color: AppColors.blackColor1),
        contentPadding: EdgeInsets.all(10),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: isBorder ?? false ? AppColors.blackColor1 : Colors.transparent),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: isBorder ?? false ? AppColors.blackColor1 : Colors.transparent),
        ),
        suffixIcon: GestureDetector(
          onTap: onSuffixIconPressed,
          child: Transform.scale(scale: 0.55, child: suffixIcon),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
      ),
    );
  }
}
