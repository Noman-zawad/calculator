import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  final String text;
  final Color btnColor;
  final Function onPressed;

  const CalculatorButton({
    super.key,
    required this.text,
    required this.onPressed,
    required this.btnColor,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          onPressed(text);
        },
        style: TextButton.styleFrom(
          backgroundColor: btnColor,
          padding: const EdgeInsets.all(0),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0),
              side: BorderSide.none // Set border radius to 0
              ),
        ),
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(30),
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 19.0,
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
