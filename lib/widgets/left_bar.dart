import 'package:bmi/constants/app_constants.dart';
import 'package:flutter/material.dart';

class Leftbar extends StatelessWidget {
  const Leftbar({Key? key,required this.barWidth}) : super(key: key);
  final double barWidth;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          height: 25,
          width: barWidth,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            color: accentHexColor),
          ),

      ],
    );
  }
}
