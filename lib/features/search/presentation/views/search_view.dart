import 'package:crafty_app/core/wigets/search_text_field.dart';
import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  // Define the route name to be used in Navigator.pushNamed()
  static const String routeName = 'searchView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Hero(
              tag: 'searchHero', // Same tag for hero animation
              child: SearchTextField(
                enabled: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
