import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/search/presentation/view/widgets/custom_search_text_field.dart';
import 'package:bookly_app/features/search/presentation/view/widgets/search_result_list_view.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          CustomSearchTextField(),
          SizedBox(height: 16,),
          Text("Search Result",style: Styles.textStyle18SemiBold,),
          SizedBox(height: 16,),
          Expanded(child: SearchResultListView()),
        ],
      ),
    );
  }
}
