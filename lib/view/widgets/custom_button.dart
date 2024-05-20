import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.buttonLable,
      required this.color,
      required this.borderThikness});
  final double borderThikness;
  final String buttonLable;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38,
      width: 318,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
              side: BorderSide(
                  width: borderThikness, color: const Color(0xff97bfa0))),
        ),
        child: Text(
          buttonLable,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Color(0xff035014),
            fontFamily: 'Montaga',
          ),
        ),
      ),
    );
  }
}
