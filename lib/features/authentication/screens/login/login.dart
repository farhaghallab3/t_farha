import 'package:flutter/material.dart';
import 'package:get/get_common/get_reset.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_farha/common/styles/spacing_styles.dart';
import 'package:t_farha/common/widget/widgets_login_signup/form_divider.dart';
import 'package:t_farha/common/widget/widgets_login_signup/tsocial_button.dart';
import 'package:t_farha/features/authentication/screens/login/widgets/login_form.dart';
import 'package:t_farha/features/authentication/screens/login/widgets/login_header.dart';
import 'package:t_farha/utils/constants/colors.dart';
import 'package:t_farha/utils/constants/enums.dart';
import 'package:t_farha/utils/constants/image_strings.dart';
import 'package:t_farha/utils/constants/sizes.dart';
import 'package:t_farha/utils/constants/texts.dart';
import 'package:t_farha/utils/helpers/helper_functions.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              const TLoginHeader(),
              const TloginForm(),
              TFormDivider(dividerText: TTexts.orSignInwith.capitalize!),
              const SizedBox(height: TSizes.SpacebtwSections),
              const TSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
