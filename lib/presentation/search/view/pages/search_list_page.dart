import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mvvm_book/core/common_widgets/text_styles.dart';
import 'package:mvvm_book/core/utils/colors/app_colors.dart';
import 'package:mvvm_book/core/utils/size/screen_size.dart';
import 'package:mvvm_book/presentation/search/infra/model/book_data.dart';
import 'package:mvvm_book/presentation/search/view/widgets/search_input_widget.dart';
import 'package:mvvm_book/presentation/search/view_model/search_viewmodel.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:readmore/readmore.dart';

TextEditingController searchTextEditingController = TextEditingController();
  
class SearchListPage extends ConsumerWidget {
  SearchListPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var bookList = ref.watch(searchViewModelNotifierProvider).searchBookList;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
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
                child: bookList.isEmpty ? Center(child: TextStyles.normalCenterTextWidget(title: 'Find your books!')) : GridView.custom(
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
                    return Card(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(
                            height: context.screenHeight * 0.13,
                            width: context.screenWidth,
                            child: Stack(
                              children: [
                                Center(
                                  child: SizedBox(
                                      height: context.screenHeight * 0.13,
                                      child: CachedNetworkImage(
                                        imageUrl: data.image,
                                        fit: BoxFit.cover,
                                      )),
                                ),
                                Positioned(
                                    right: 0,
                                    child: Icon(
                                      Icons.favorite_border_outlined,
                                      color: AppColors.primaryColor,
                                    ))
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          SizedBox(
                              width: context.screenWidth * 0.3,
                              child: Center(
                                child: ReadMoreText(
                                  data.title,
                                  style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.greyColor),
                                  trimLines: 2,
                                  trimMode: TrimMode.Line,
                                  trimCollapsedText: 'Show more',
                                  trimExpandedText: 'Show less',
                                  moreStyle: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.primaryColor),
                                ),
                              )),
                          const SizedBox(
                            height: 5,
                          ),
                          Expanded(
                              child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: ReadMoreText(
                              data.authors,
                              style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w300,
                              ),
                              trimLines: 2,
                              trimMode: TrimMode.Line,
                              trimCollapsedText: 'Show more',
                              trimExpandedText: 'Show less',
                              moreStyle: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                  color: AppColors.primaryColor),
                            ),
                          )),
                        ],
                      ),
                    );
                  }),
                ))
          ],
        ),
      ),
    );
  }
}
