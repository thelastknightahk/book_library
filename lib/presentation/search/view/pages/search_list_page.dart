import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mvvm_book/core/common_widgets/text_styles.dart';
import 'package:mvvm_book/core/global/view/base_page.dart';
import 'package:mvvm_book/core/utils/colors/app_colors.dart';
import 'package:mvvm_book/core/utils/size/screen_size.dart';
import 'package:mvvm_book/presentation/search/infra/model/book_data.dart';
import 'package:mvvm_book/presentation/search/view/widgets/search_input_widget.dart';
import 'package:mvvm_book/presentation/search/view/widgets/search_list_item_widget.dart';
import 'package:mvvm_book/presentation/search/view_model/search_viewmodel.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../../fav/infra/model/fav_data.dart';

TextEditingController searchTextEditingController = TextEditingController();

class SearchListPage extends ConsumerWidget {
  const SearchListPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var bookList = ref.watch(searchViewModelNotifierProvider).searchBookList;

    return BasePage(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: AppColors.whiteColor,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: searchInputWidget(
                      context: context,
                      textEditingController: searchTextEditingController,
                      title: "Enter book categories ...",
                      searchFunction: () async {
                        ref
                            .read(searchViewModelNotifierProvider.notifier)
                            .searchBooks(
                                searchTextEditingController.text.toString().trim());
                      }),
                ),
                SizedBox(
                    height: context.screenHeight / 1.3,
                    child: bookList.isEmpty
                        ? Center(
                            child: TextStyles.normalCenterTextWidget(
                                title: 'Find your books!'))
                        : GridView.custom(
                            gridDelegate: SliverWovenGridDelegate.count(
                              crossAxisCount: 2,
                              mainAxisSpacing: 2,
                              crossAxisSpacing: 2,
                              pattern: [
                                const WovenGridTile(1),
                                const WovenGridTile(
                                  5 / 7,
                                  crossAxisRatio: 0.9,
                                  alignment: AlignmentDirectional.centerEnd,
                                )
                              ],
                            ),
                            childrenDelegate: SliverChildBuilderDelegate(
                                childCount: bookList.length, (context, index) {
                              BookData data = bookList[index];
                              var favData = FavData(
                                  bookID: data.id,
                                  bookTitle: data.title,
                                  bookAuthors: data.authors,
                                  bookImage: data.image);
                              return SearchListItemWidget(
                                  data: data, favData: favData);
                            }),
                          ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
