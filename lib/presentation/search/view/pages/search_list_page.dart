import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mvvm_book/core/utils/api/api_constant.dart';
import 'package:mvvm_book/core/utils/colors/app_colors.dart';
import 'package:mvvm_book/core/utils/size/screen_size.dart';
import 'package:mvvm_book/presentation/search/infra/model/book_data.dart';
import 'package:mvvm_book/presentation/search/view/widgets/search_input_widget.dart';

class SearchListPage extends ConsumerWidget {
  SearchListPage({super.key});
  TextEditingController searchTextEditingController = TextEditingController();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                    await fetchBooks(
                        searchTextEditingController.text.toString().trim());
                  }),
            ),
            Container(
              height: context.screenHeight / 1.3,
            )
          ],
        ),
      ),
    );
  }

  Future<List<BookData>> fetchBooks(String query) async {
    Dio dio = Dio();
    try {
      final response = await dio
          .get('${ApiConstant.bookdbBaseUrl}${ApiConstant.boookSearch}/$query');
      if (response.statusCode == 200) {
        final List<dynamic> data = response.data['books'];
        print('Data ${data}');
        return data.map((item) => BookData.fromJson(item)).toList();
      }
    } catch (e) {
      print('Error: $e');
    }
    return <BookData>[];
  }
}
