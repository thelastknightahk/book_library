import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mvvm_book/core/common_widgets/text_styles.dart';
import 'package:mvvm_book/core/utils/colors/app_colors.dart';
import 'package:mvvm_book/core/utils/size/screen_size.dart';
import 'package:mvvm_book/presentation/search/view/widgets/search_box_widget.dart';

class SearchPage extends ConsumerWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        InkWell(
            onTap: () {
              context.push('/searchListPage');
            },
            child: searchBoxWidget(context)),
        const SizedBox(
          height: 20,
        ),
        TextStyles.normalCenterTextWidget(
            title: 'Love the books!',
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: AppColors.greyColor),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
            width: 200,
            height: 200,
            child: Image.asset('assets/images/search_book.png')),
      ],
    ));
  }
}
