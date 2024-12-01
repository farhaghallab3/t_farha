import 'package:flutter/material.dart';
import 'package:t_farha/features/authentication/controllers/onboarding_controlling.dart';
import 'package:t_farha/utils/constants/sizes.dart';
import 'package:t_farha/utils/device/device_utility.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: TDeviveUtils.getAppBarHeight(),
        right: TSizes.defaultSpace,
        child: TextButton(
          onPressed: () => OnBoardingController.instance.skipPage(),
          child: Text('Skip'),
        ));
  }
}
