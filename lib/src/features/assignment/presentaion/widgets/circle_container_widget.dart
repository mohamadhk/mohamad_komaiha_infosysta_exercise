import 'package:flutter/material.dart';
import 'package:mohamad_komaiha_infosysta_assignment/src/core/constants/const.dart';

class CircleWithNumber extends StatelessWidget {
  final int number;

  const CircleWithNumber({super.key, required this.number});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: kLightGrey,
        border: Border.all(color: kToastBG, width: 2),
      ),
      child: Center(
        child: Text(
          number.toString(),
          style: Theme.of(context).textTheme.titleSmall!.copyWith(
              overflow: TextOverflow.ellipsis,
              fontWeight: FontWeight.bold,
              color: kWhiteColor
          ),
        ),
      ),
    );
  }
}