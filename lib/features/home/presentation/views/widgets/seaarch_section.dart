import 'package:crafty_app/core/wigets/search_text_field.dart';
import 'package:crafty_app/features/search/presentation/views/search_view.dart';
import 'package:flutter/material.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .pushNamed(SearchView.routeName); // This works with the named route
      },
      child: Hero(
        tag: 'searchHero', // Same tag for hero animation
        child: SearchTextField(),
      ),
    );
  }
}
