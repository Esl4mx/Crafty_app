import 'package:crafty_app/constants.dart';
import 'package:crafty_app/core/utlis/app_images.dart';
import 'package:crafty_app/features/details/presentation/view/details_view.dart';
import 'package:crafty_app/features/home/presentation/view_model/items_model.dart';
import 'package:crafty_app/features/home/presentation/views/widgets/custom_popular_item.dart';
import 'package:flutter/material.dart';

class PopularItemsListView extends StatelessWidget {
  const PopularItemsListView({super.key});
  static List<ItemsModel> items = [
    ItemsModel(
        srcModel: Assets.imagesModelsSwoonLounge,
        discription:
            "The Swedish Designer Monica Forstar’s Style Is Characterised By her Enternal love For New Materials and Beautiful Pure Shapes.",
        title: "Swoon Lounge",
        subtitle: "Regal Do Lobo",
        image: Assets.imagesPopChair1,
        price: 136.76),
    ItemsModel(
        srcModel: Assets.imagesModelsChairBlackLounge,
        discription:
            "The Swedish Designer Monica Forstar’s Style Is Characterised By her Enternal love For New Materials and Beautiful Pure Shapes.",
        title: "Swoon Lounge",
        subtitle: "Regal Do Lobo",
        image: Assets.imagesPopChair2,
        price: 99.9),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: kHorizontalPadding),
      child: SizedBox(
        height: 120,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(right: 16),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => DetailsView(items: items[index]),
                  ));
                },
                child: CustomPopularItem(
                  items: items[index],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
