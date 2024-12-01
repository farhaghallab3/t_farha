import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_farha/common/widget/success_screen/success_screen.dart';
import 'package:t_farha/features/authentication/screens/login/login.dart';
import 'package:t_farha/utils/constants/image_strings.dart';
import 'package:t_farha/utils/constants/sizes.dart';
import 'package:t_farha/utils/constants/texts.dart';
import 'package:t_farha/utils/helpers/helper_functions.dart';

class VerfiyEmailScreen extends StatelessWidget {
  const VerfiyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.offAll(() => const LoginScreen()),
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              Image(
                image: const AssetImage(TImage.deliveredEmailIllustration),
                width: THelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(
                height: TSizes.SpacebtwSections,
              ),
              Text(
                TTexts.confirmEmail,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: TSizes.SpacebtwItem,
              ),
              Text(
                'farha@gmail.com',
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: TSizes.SpacebtwItem,
              ),
              Text(
                TTexts.confirmEmailSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: TSizes.SpacebtwSections,
              ),

              /// Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.to(
                          () => SuccessScreen(
                              image: TImage.staticSuccessIllustration,
                              title: TTexts.yourAccountCreatedTitle,
                              subtitle: TTexts.yourAccountCreatedSubTitle,
                              onPressed: () =>
                                  Get.to(() => const LoginScreen())),
                        ), // SuccessScreen
                    child: const Text(TTexts.tContinues)), // ElevatedButton
              ),
              const SizedBox(
                height: TSizes.SpacebtwItem,
              ),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                    onPressed: () {}, child: const Text(TTexts.resendEmail)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
