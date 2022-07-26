import 'package:flutter/material.dart';

import 'constants.dart';

class HeightSliderTheme extends StatefulWidget {
  const HeightSliderTheme({Key? key}) : super(key: key);

  @override
  State<HeightSliderTheme> createState() => _HeightSliderThemeState();
}

class _HeightSliderThemeState extends State<HeightSliderTheme> {
  int height = 180;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Text(
              height.toString(),
              style: kNumberTextStyle,
            ),
            const Text(
              "cm",
              style: kLabelTextStyle,
            ),
          ],
        ),
        SliderTheme(
          data: const SliderThemeData(
            activeTrackColor: Colors.white,
            inactiveTrackColor: Color(0xFF8D8E98),
            thumbColor: Color(0xFFEB1555),
            overlayColor: Color(0x1fEB1555),
            thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
            overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
          ),
          child: Slider(
            value: height.toDouble(),
            min: 130.0,
            max: 230.0,
            onChanged: (double newValue) {
              setState(() => height = newValue.round());
            },
          ),
        ),
      ],
    );
  }
}
