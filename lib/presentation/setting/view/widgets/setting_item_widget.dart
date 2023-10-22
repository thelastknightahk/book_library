import 'package:flutter/material.dart';

import '../../../../core/common_widgets/text_styles.dart';
import '../../../../core/utils/colors/app_colors.dart';
import 'dotted_line.dart';

Widget settingItemWidget(
    {required BuildContext context,
    required Function()? onTap,
    required String title,
    required IconData iconData}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        InkWell(
          onTap: onTap,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                iconData,
                color: AppColors.greyColor,
              ),
              SizedBox(
                width: 10,
              ),
              TextStyles.normalTextWidget(
                title: '$title',
                fontSize: 16,
                color: AppColors.blackColor,
                fontWeight: FontWeight.w500,
              ),
            ],
          ),
        ),
        dottedLine(context),
      ],
    ),
  );
}
