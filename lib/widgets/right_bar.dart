import 'package:bmi/constants/app_constants.dart';
import 'package:flutter/material.dart';

class Rightbar extends StatelessWidget {
  const Rightbar({Key? key,required this.barWidth}) : super(key: key);
  final double barWidth;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
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