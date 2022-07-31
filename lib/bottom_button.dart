import 'package:flutter/material.dart';
import 'package:bmi/constants.dart';

class bottomButton extends StatelessWidget {
  final VoidCallback onTap;
  final String buttonTitle;

  bottomButton({required this.onTap, required this.buttonTitle});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 10),
        width: double.infinity,
        height: kBottomContainerHeight,
        child: Center(
          child: Text(
            buttonTitle,
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
