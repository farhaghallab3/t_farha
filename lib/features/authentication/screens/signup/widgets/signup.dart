import 'package:flutter/material.dart';
import 'package:get/get_common/get_reset.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_farha/common/widget/widgets_login_signup/form_divider.dart';
import 'package:t_farha/common/widget/widgets_login_signup/tsocial_button.dart';
import 'package:t_farha/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:t_farha/utils/constants/colors.dart';
import 'package:t_farha/utils/constants/sizes.dart';
import 'package:t_farha/utils/constants/texts.dart';
import 'package:t_farha/utils/helpers/helper_functions.dart';

class SighUpScreen extends StatelessWidget {
  const SighUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              TTexts.signupTitle,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(
              height: TSizes.SpacebtwSections,
            ),
            TSignupForm(),
            const SizedBox(
              height: TSizes.SpacebtwSections,
            ),
            TFormDivider(dividerText: TTexts.orSignInwith.capitalize!),
            const SizedBox(
              height: TSizes.SpacebtwSections,
            ),
            const TSocialButtons(),
          ]),
        ),
      ),
    );
  }
}
