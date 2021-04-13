import 'package:flutter/material.dart';

import 'constants.dart';

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
          size: 50.0,
          color: Colors.white,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          text,
          style: kLabelTextStyled,
        )
      ],
    );
  }
}
