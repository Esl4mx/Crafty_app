import 'package:crafty_app/core/utlis/app_images.dart';
import 'package:crafty_app/core/wigets/Custom_app_bar_leading_trailing.dart';
import 'package:crafty_app/features/home/presentation/view_model/items_model.dart';
import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

class ModelView extends StatelessWidget {
  const ModelView({super.key, required this.items});
  final ItemsModel items;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 300,
        child: ModelViewer(
          src: items.srcModel,
          ar: true,
          autoRotate: true,
          disableZoom: true,
        ));
  }
}
