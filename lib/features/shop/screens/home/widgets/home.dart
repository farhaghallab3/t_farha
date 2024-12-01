import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:t_farha/common/widget/appbar/appbar.dart';
import 'package:t_farha/common/widget/custom_shape/containers/primary_header_container.dart';
import 'package:t_farha/utils/constants/colors.dart';
import 'package:t_farha/utils/constants/texts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Moser .. Tuteriat [Section 3, Video # 2]
            TPrimaryHeaderContainer(
                child: Column(children: [
              TAppBar(
                title: Column(children: [
                  Text(TTexts.homeAppBarTitle,
                      style: Theme.of(context)
                          .textTheme
                          .labelMedium!
                          .apply(color: TColors.grey)),
                  Text(TTexts.homeAppBarSubTitle,
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall!
                          .apply(color: TColors.white)),
                ]),
              ) // cotumn, TAppBar
            ]) // Colum
                ), // TPrimacyHeaderContainer
          ],
        ), // Coluan
      ), // SinglethildscrollViem
    );
  }
}
