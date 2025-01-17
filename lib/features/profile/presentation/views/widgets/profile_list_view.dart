import 'package:crafty_app/core/utlis/app_images.dart';
import 'package:crafty_app/features/profile/presentation/view_models/profile_items_model.dart';
import 'package:crafty_app/features/profile/presentation/views/widgets/profile_list_view_item.dart';
import 'package:flutter/material.dart';

class ProfileListView extends StatelessWidget {
  const ProfileListView({super.key});
  static List<ProfileItemsModel> profileItemsModel = [
    ProfileItemsModel(
        title: "Profile", image: Assets.imagesIconsUserCircle, onTap: () {}),
    ProfileItemsModel(
        title: "Payment Methods",
        image: Assets.imagesIconsProfileWallet,
        onTap: () {}),
    ProfileItemsModel(
        title: "Order history",
        image: Assets.imagesIconsProfileOrders,
        onTap: () {}),
    ProfileItemsModel(
        title: "Delivery Address",
        image: Assets.imagesIconsDeliveryPlane,
        onTap: () {}),
    ProfileItemsModel(
        title: "Support Center",
        image: Assets.imagesIconsAlignCenter,
        onTap: () {}),
    ProfileItemsModel(
        title: "Legal Policy ",
        image: Assets.imagesIconsSecurity,
        onTap: () {}),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: profileItemsModel.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child:
              ProfileListViewItem(profileItemsModel: profileItemsModel[index]),
        );
      },
    );
  }
}
