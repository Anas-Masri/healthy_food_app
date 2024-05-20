import 'package:flutter/material.dart';
import 'package:healthy_food/core/constant/colors.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    this.emptyIcon = false,
    super.key,
    required this.labelText,
    required this.icon,
  });
  final String labelText;
  final IconData icon;
  final bool emptyIcon;
  @override
  Widget build(BuildContext context) {
    OutlineInputBorder outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(
        color: Color(0xffD7DDDB),
        width: 1.0,
      ),
    );
    return SizedBox(
      height: 40,
      width: 318,
      child: TextFormField(
          decoration: InputDecoration(
        suffixIconColor: emptyIcon ? kfillColor : kSuffixIconColor,
        suffixIcon: Icon(
          size: 16,
          icon,
          color: emptyIcon ? kfillColor : kSuffixIconColor,
        ),
        labelText: labelText,
        labelStyle: const TextStyle(
            fontFamily: 'Cabin',
            color: klabelTextColor,
            fontWeight: FontWeight.w500,
            fontSize: 16),
        fillColor: kfillColor,
        filled: true,
        focusedBorder: outlineInputBorder,
        enabledBorder: outlineInputBorder,
      )),
    );
  }
}
