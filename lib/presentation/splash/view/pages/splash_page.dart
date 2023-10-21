import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart'; 
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mvvm_book/core/common_widgets/text_styles.dart';
import 'package:mvvm_book/core/global/viewmodel/global_viewmodel.dart';
import 'package:mvvm_book/core/utils/colors/app_colors.dart';
 

class SplashPage extends ConsumerWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final globalModel = ref.watch(globalViewModelNotifierProvider);

    if (globalModel.currentUserData == null) {
      globalModel.getCurrentUser().then((value) {
        if (globalModel.currentUserData != null) {
          context.replace('/mainPage');
        } else {
          context.replace('/loginPage');
        }
      });
    }
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
            InkWell(
              onTap: () async {
                final globalModel = ref.watch(globalViewModelNotifierProvider);
                // final user = User()
                //   ..username = 'ahk'
                //   ..password = '1234';
                //final data = await globalModel.getCurrentUser();
                print("Clicked saved ${globalModel.currentUserData!.username}");
              },
              child: TextStyles.normalCenterTextWidget(
                  title: 'Welcome From Library',
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: AppColors.greyColor),
            )
          ],
        ),
      ),
    );
  }
}
