import 'package:flutter/widgets.dart';
import 'package:mvvm_book/core/utils/size/screen_size.dart';

import '../../../../core/common_widgets/text_styles.dart';
import '../../../../core/utils/colors/app_colors.dart';

Widget searchBoxWidget(BuildContext context) {
  return Container(
    margin: const EdgeInsets.all(16),
    width: context.screenWidth,
    height: context.screenHeight / 18,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: AppColors.lightGreyColor),
    child: Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: TextStyles.normalCenterTextWidget(
              title: 'Search . . .', color: AppColors.greyColor, fontSize: 16),
        )),
  );
}
