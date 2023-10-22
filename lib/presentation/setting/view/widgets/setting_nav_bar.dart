import 'package:flutter/material.dart';
import 'package:mvvm_book/core/utils/size/screen_size.dart';

import '../../../../core/common_widgets/text_styles.dart';
import '../../../../core/utils/colors/app_colors.dart';

Widget settingNavBar(BuildContext context){
  return  Container(
              color: AppColors.primaryColor,
              width: context.screenWidth,
              height: context.screenHeight * 0.05,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextStyles.normalTextWidget(
                        title: 'Setting',
                        fontSize: 18,
                        color: AppColors.whiteColor,
                        fontWeight: FontWeight.w600),
                  ],
                ),
              ),
            );
}