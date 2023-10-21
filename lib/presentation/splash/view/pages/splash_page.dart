import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mvvm_book/core/common_widgets/text_styles.dart';
import 'package:mvvm_book/core/utils/colors/app_colors.dart';

class SplashPage extends ConsumerWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Center(child: Image.asset('assets/images/read_splash.png')),
            const SizedBox(
              height: 20,
            ),
            TextStyles.normalCenterTextWidget(
                title: 'Welcome From Library',
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: AppColors.greyColor)
          ],
        ),
      ),
    );
  }
}
