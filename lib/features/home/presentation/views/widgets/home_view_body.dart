import 'package:crafty_app/core/wigets/search_text_field.dart';
import 'package:crafty_app/features/home/presentation/views/widgets/custom_home_app_bar.dart';
import 'package:crafty_app/features/home/presentation/views/widgets/special_offer_section.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: CustomHomeAppBar(),
        ),
        SliverToBoxAdapter(
          child: SearchTextField(),
        ),
        SliverToBoxAdapter(child: SpecialOfferSection()),
      ],
    );
  }
}
