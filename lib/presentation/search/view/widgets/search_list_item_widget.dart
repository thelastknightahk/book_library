import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mvvm_book/core/utils/size/screen_size.dart';
import 'package:mvvm_book/presentation/fav/infra/model/fav_data.dart';
import 'package:mvvm_book/presentation/search/infra/model/book_data.dart';
import 'package:readmore/readmore.dart';

import '../../../../core/utils/colors/app_colors.dart';
import '../../../fav/view_model/fav_view_model.dart';

// ignore: must_be_immutable
class SearchListItemWidget extends ConsumerWidget {
  BookData data;
  FavData favData;
    SearchListItemWidget({super.key, required this.data, required this.favData});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
       var favList = ref.watch(favViewModelNotifierProvider).FavList;
    return    Card(
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
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
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
  }
}