import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_farha/features/authentication/controllers/onboarding_controlling.dart';
import 'package:t_farha/utils/constants/colors.dart';
import 'package:t_farha/utils/constants/sizes.dart';
import 'package:t_farha/utils/device/device_utility.dart';
import 'package:t_farha/utils/helpers/helper_functions.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Positioned(
        right: TSizes.defaultSpace,
        bottom: TDeviveUtils.getBottomNavigationBarHight(),
        child: ElevatedButton(
            onPressed: () => OnBoardingController.instance.nextPage(),
            style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                backgroundColor: dark ? TColors.primary : Colors.black),
            child: Icon(Iconsax.arrow_right_3)));
  }
}
