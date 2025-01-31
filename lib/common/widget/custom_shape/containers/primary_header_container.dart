import 'package:flutter/material.dart';
import 'package:t_farha/common/widget/custom_shape/containers/circular_container.dart';
import 'package:t_farha/common/widget/custom_shape/curved_edges/curved_edges_widget.dart';
import 'package:t_farha/utils/constants/colors.dart';

class TPrimaryHeaderContainer extends StatelessWidget {
  const TPrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TCurvedWidget(
      child: Container(
        color: TColors.primary,
        padding: const EdgeInsets.all(0),
        child: SizedBox(
          height: 400,
          child: Stack(
            children: [
              Positioned(
                top: -150,
                right: -250,
                child: TCircularContainer(
                    backgroundcolor: TColors.textwhite.withOpacity(0.1)),
              ),
              Positioned(
                top: 100,
                right: -300,
                child: TCircularContainer(
                    backgroundcolor: TColors.textwhite.withOpacity(0.1)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
