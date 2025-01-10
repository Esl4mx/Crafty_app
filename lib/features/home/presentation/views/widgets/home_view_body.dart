import 'package:crafty_app/core/wigets/search_text_field.dart';
import 'package:crafty_app/features/home/presentation/views/widgets/category_item.dart';
import 'package:crafty_app/features/home/presentation/views/widgets/category_list_view.dart';
import 'package:crafty_app/features/home/presentation/views/widgets/custom_home_app_bar.dart';
import 'package:crafty_app/features/home/presentation/views/widgets/most_interested_list_view.dart';
import 'package:crafty_app/features/home/presentation/views/widgets/sections_header.dart';
import 'package:crafty_app/features/home/presentation/views/widgets/special_offer_section.dart';
import 'package:flutter/material.dart';

import 'custom_most_intereste_container.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(
          child: CustomHomeAppBar(),
        ),
        const SliverToBoxAdapter(
          child: SearchTextField(),
        ),
        const SliverToBoxAdapter(
          child: SpecialOfferSection(),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 24,
          ),
        ),
        const SliverToBoxAdapter(
          child: CategoryListView(),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 24,
          ),
        ),
        SliverToBoxAdapter(
          child: SectionsHeader(
            title: "Most Interested",
            ontap: () {},
          ),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 16,
          ),
        ),
        const SliverToBoxAdapter(child: MostInterestedListView()),
      ],
    );
  }
}
