import 'package:flutter/material.dart';

import '../constants.dart';

const iconSize = 80.0;

const sizedBoxHeight = 15.0;

class IconContent extends StatelessWidget {
  const IconContent({ @required this.icon, @required this.label });

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: iconSize,
        ),
        SizedBox(height: sizedBoxHeight),
        Text(
            label,
            style: kTextStyle,
        ),
      ],
    );
  }
}