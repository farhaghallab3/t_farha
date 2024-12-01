import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:t_farha/utils/constants/colors.dart';
import 'package:t_farha/utils/constants/sizes.dart';
import 'package:t_farha/utils/constants/texts.dart';
import 'package:t_farha/utils/helpers/helper_functions.dart';

class TTermAndConditioncheckBox extends StatelessWidget {
  const TTermAndConditioncheckBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Row(
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: Checkbox(value: true, onChanged: (value) {}),
        ),
        const SizedBox(
          width: TSizes.SpacebtwItem,
        ),
        Text.rich(TextSpan(children: [
          TextSpan(
              text: '${TTexts.iAgreeTo}',
              style: Theme.of(context).textTheme.bodySmall),
          TextSpan(
              text: '${TTexts.privacyPolicy}',
              style: Theme.of(context).textTheme.bodyMedium!.apply(
                  color: dark ? TColors.white : TColors.primary,
                  decoration: TextDecoration.underline,
                  decorationColor: dark ? TColors.white : TColors.primary)),
          TextSpan(
              text: '${TTexts.and}',
              style: Theme.of(context).textTheme.bodySmall),
          TextSpan(
              text: '${TTexts.termsofUse}',
              style: Theme.of(context).textTheme.bodyMedium!.apply(
                  color: dark ? TColors.white : TColors.primary,
                  decoration: TextDecoration.underline,
                  decorationColor: dark ? TColors.white : TColors.primary)),
        ]))
      ],
    );
  }
}
