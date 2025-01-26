import 'package:crafty_app/constants.dart';
import 'package:crafty_app/core/wigets/search_text_field.dart';
import 'package:crafty_app/features/search/presentation/views/widgets/search_category_list_view.dart';
import 'package:crafty_app/features/search/presentation/views/widgets/search_grid_view.dart';
import 'package:crafty_app/features/search/presentation/views/widgets/search_text_header.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 24),
      child: Column(
        children: [
          Hero(
            tag: 'searchHero',
            child: SearchTextField(
              enabled: true,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(24),
            child: SearchTextHeader(),
          ),
          SearchCategoryListView(),
          SizedBox(
            height: 24,
          ),
          Expanded(
              child: Padding(
            padding: EdgeInsets.symmetric(horizontal: kHorizontalPadding),
            child: SearchGridView(),
          ))
        ],
      ),
    );
  }
}
