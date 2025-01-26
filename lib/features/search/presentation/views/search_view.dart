import 'package:crafty_app/core/wigets/search_text_field.dart';
import 'package:crafty_app/features/search/presentation/views/widgets/search_view_body.dart';
import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  static const String routeName = 'searchView';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: SearchViewBody()),
    );
  }
}
