import 'package:crafty_app/core/utlis/app_images.dart';
import 'package:crafty_app/features/home/presentation/view_model/items_model.dart';
import 'package:crafty_app/features/search/presentation/views/widgets/custom_search_item.dart';
import 'package:flutter/material.dart';

class SearchGridView extends StatelessWidget {
  const SearchGridView({super.key});
  static List<ItemsModel> items = [
    ItemsModel(
      srcModel: Assets.imagesModelsSofaChairNew,
      discription:
          "The Swedish Designer Monica Forstar’s Style Is Characterised By her Enternal love For New Materials and Beautiful Pure Shapes.",
      title: "Ox Mathis Chair",
      subtitle: "Hans j.wenger",
      image: Assets.imagesChair1,
      price: 9.99,
    ),
    ItemsModel(
      srcModel: Assets.imagesModelsSofaChairGreen,
      discription:
          "The Swedish Designer Monica Forstar’s Style Is Characterised By her Enternal love For New Materials and Beautiful Pure Shapes.",
      title: "Fuji Arm Chair",
      subtitle: "Hans j.wenger",
      image: Assets.imagesChair2,
      price: 9.99,
    ),
    ItemsModel(
      srcModel: Assets.imagesModelsSofaChairNew,
      discription:
          "The Swedish Designer Monica Forstar’s Style Is Characterised By her Enternal love For New Materials and Beautiful Pure Shapes.",
      title: "Ox Mathis Chair",
      subtitle: "Hans j.wenger",
      image: Assets.imagesChair1,
      price: 9.99,
    ),
    ItemsModel(
      srcModel: Assets.imagesModelsSofaChairGreen,
      discription:
          "The Swedish Designer Monica Forstar’s Style Is Characterised By her Enternal love For New Materials and Beautiful Pure Shapes.",
      title: "Fuji Arm Chair",
      subtitle: "Hans j.wenger",
      image: Assets.imagesChair2,
      price: 9.99,
    ),
    ItemsModel(
      srcModel: Assets.imagesModelsSofaChairNew,
      discription:
          "The Swedish Designer Monica Forstar’s Style Is Characterised By her Enternal love For New Materials and Beautiful Pure Shapes.",
      title: "Ox Mathis Chair",
      subtitle: "Hans j.wenger",
      image: Assets.imagesChair1,
      price: 9.99,
    ),
    ItemsModel(
      srcModel: Assets.imagesModelsSofaChairGreen,
      discription:
          "The Swedish Designer Monica Forstar’s Style Is Characterised By her Enternal love For New Materials and Beautiful Pure Shapes.",
      title: "Fuji Arm Chair",
      subtitle: "Hans j.wenger",
      image: Assets.imagesChair2,
      price: 9.99,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    // double screenWidth = MediaQuery.sizeOf(context).width;
    // double itemWidth = screenWidth * 0.57;
    double screenHight = MediaQuery.sizeOf(context).height;
    double itemHight = screenHight * 0.27;
    return GridView.builder(
      itemCount: items.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisExtent: itemHight,
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        // childAspectRatio: 0.8,
        crossAxisCount: 2,
      ),
      itemBuilder: (context, index) {
        return CustomSearchItem(
          items: items[index],
        );
      },
    );
  }
}
