import 'package:flutter/material.dart'; 
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mvvm_book/core/common_widgets/text_styles.dart';
import 'package:mvvm_book/core/utils/colors/app_colors.dart';
import 'package:mvvm_book/presentation/fav/view_model/fav_view_model.dart';
import 'package:mvvm_book/presentation/search/view/widgets/search_box_widget.dart';

class SearchPage extends ConsumerWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var favList = ref.watch(favViewModelNotifierProvider).FavList;
    if (favList == null) {
      ref.read(favViewModelNotifierProvider.notifier).getFavList();
    }
    return Center(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        searchBoxWidget(context),
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
