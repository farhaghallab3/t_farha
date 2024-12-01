import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:t_farha/features/authentication/controllers/onboarding_controlling.dart';
import 'package:t_farha/utils/constants/colors.dart';
import 'package:t_farha/utils/constants/sizes.dart';
import 'package:t_farha/utils/device/device_utility.dart';
import 'package:t_farha/utils/helpers/helper_functions.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = THelperFunctions.isDarkMode(context);
    return Positioned(
      bottom: TDeviveUtils.getBottomNavigationBarHight() + 25,
      left: TSizes.defaultSpace,
      child: SmoothPageIndicator(
          controller: controller.pageController,
          onDotClicked: controller.dotNavigationClick,
          count: 3,
          effect: ExpandingDotsEffect(
              activeDotColor: dark ? TColors.light : TColors.dark,
              dotHeight: 6)),
    );
  }
}
