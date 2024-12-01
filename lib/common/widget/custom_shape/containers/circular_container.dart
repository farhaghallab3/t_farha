import 'package:flutter/material.dart';
import 'package:t_farha/utils/constants/colors.dart';

class TCircularContainer extends StatelessWidget {
  const TCircularContainer({
    super.key,
    this.width = 400,
    this.hight = 400,
    this.radius = 400,
    this.padding = 0,
    this.child,
    this.backgroundcolor = TColors.white,
  });

  final double? width;
  final double? hight;
  final double radius;
  final double padding;
  final Widget? child;
  final Color backgroundcolor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: hight,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius), color: backgroundcolor),
      child: child,
    );
  }
}
