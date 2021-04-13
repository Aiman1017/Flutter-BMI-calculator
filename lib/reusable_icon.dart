import 'package:flutter/material.dart';

const labelTextStyled = TextStyle(
  fontSize: 18.0,
  color: Color(0xFF8d8e98),
);

class ReusableIcon extends StatelessWidget {
  ReusableIcon({this.icon, this.text});

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
          color: Colors.white,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          text,
          style: labelTextStyled,
        )
      ],
    );
  }
}
