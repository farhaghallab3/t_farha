import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_farha/features/authentication/screens/signup/term_and_condition.dart';
import 'package:t_farha/features/authentication/screens/signup/widgets/verfiy_email.dart';
import 'package:t_farha/utils/constants/colors.dart';
import 'package:t_farha/utils/constants/sizes.dart';
import 'package:t_farha/utils/constants/texts.dart';
import 'package:t_farha/utils/helpers/helper_functions.dart';

class TSignupForm extends StatelessWidget {
  const TSignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(children: [
        Row(
          children: [
            Expanded(
                child: TextFormField(
              expands: false,
              decoration: InputDecoration(
                  labelText: TTexts.firstName, prefixIcon: Icon(Iconsax.user)),
            )),
            SizedBox(
              width: TSizes.spacebtwinputFields,
            ),
            Expanded(
                child: TextFormField(
              expands: false,
              decoration: const InputDecoration(
                  labelText: TTexts.lastName, prefixIcon: Icon(Iconsax.user)),
            ))
          ],
        ),
        const SizedBox(
          height: TSizes.spacebtwinputFields,
        ),
        TextFormField(
          expands: false,
          decoration: const InputDecoration(
              labelText: TTexts.username, prefixIcon: Icon(Iconsax.user_edit)),
        ),
        const SizedBox(
          height: TSizes.spacebtwinputFields,
        ),
        TextFormField(
          expands: false,
          decoration: const InputDecoration(
              labelText: TTexts.email, prefixIcon: Icon(Iconsax.direct)),
        ),
        const SizedBox(
          height: TSizes.spacebtwinputFields,
        ),
        TextFormField(
          expands: false,
          decoration: const InputDecoration(
              labelText: TTexts.phoneNo, prefixIcon: Icon(Iconsax.call)),
        ),
        const SizedBox(
          height: TSizes.spacebtwinputFields,
        ),
        TextFormField(
          obscureText: true,
          decoration: const InputDecoration(
              labelText: TTexts.password,
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash)),
        ),
        const SizedBox(
          height: TSizes.SpacebtwSections,
        ),
        TTermAndConditioncheckBox(),
        const SizedBox(
          height: TSizes.SpacebtwSections,
        ),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
              onPressed: () => Get.to(() => const VerfiyEmailScreen()),
              child: const Text(TTexts.createAccount)),
        )
      ]),
    );
  }
}
