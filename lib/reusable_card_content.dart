import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

class ReusableCardContent extends StatelessWidget {
  final IconData? icon;
  final String? label;

  const ReusableCardContent({
    Key? key,
    this.icon,
    this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
        const SizedBox(
          height: 15.0,
        ),
        Text(
          label!,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
