import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mvvm_book/core/utils/size/screen_size.dart';
import 'package:readmore/readmore.dart';

import '../../../../core/common_widgets/text_styles.dart';
import '../../../../core/utils/colors/app_colors.dart';
import '../../view_model/fav_view_model.dart';

class FavPage extends ConsumerWidget {
  const FavPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var favList = ref.watch(favViewModelNotifierProvider).FavList;
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: AppColors.primaryColor,
              width: context.screenWidth,
              height: context.screenHeight * 0.05,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextStyles.normalTextWidget(
                        title: 'Favorite',
                        fontSize: 18,
                        color: AppColors.whiteColor,
                        fontWeight: FontWeight.w600),
                    Icon(
                      Icons.delete,
                      color: AppColors.whiteColor,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
                height: context.screenHeight / 1.3,
                child: favList!.isEmpty
                    ? Center(
                        child:
                            TextStyles.normalCenterTextWidget(title: 'Empty!'))
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
                            childCount: favList.length, (context, index) {
                          var favData = favList[index];
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
                                              imageUrl: favData.bookImage,
                                              fit: BoxFit.cover,
                                            )),
                                      ),
                                      Positioned(
                                          right: 0,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: favList!.contains(favData)
                                                ? InkWell(
                                                    onTap: () {
                                                      ref
                                                          .read(
                                                              favViewModelNotifierProvider
                                                                  .notifier)
                                                          .removeFavData(
                                                              favData);
                                                    },
                                                    child: const Icon(
                                                      Icons.favorite,
                                                      color: AppColors
                                                          .primaryColor,
                                                    ),
                                                  )
                                                : InkWell(
                                                    onTap: () {
                                                      ref
                                                          .read(
                                                              favViewModelNotifierProvider
                                                                  .notifier)
                                                          .saveFavData(favData);
                                                    },
                                                    child: const Icon(
                                                      Icons
                                                          .favorite_border_outlined,
                                                      color: AppColors
                                                          .primaryColor,
                                                    ),
                                                  ),
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
                                        favData.bookTitle,
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
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: ReadMoreText(
                                    favData.bookAuthors,
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
                      )),
          ],
        ),
      ),
    );
  }
}
