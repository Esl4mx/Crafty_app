import 'package:crafty_app/core/utlis/app_images.dart';
import 'package:crafty_app/core/wigets/Custom_app_bar_leading_trailing.dart';
import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

class ModelView extends StatelessWidget {
  const ModelView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
        height: 300,
        child: Stack(
          children: [
            ModelViewer(
              src: Assets.imagesModelsSofaChairNew,
              ar: true,
              autoRotate: true,
              disableZoom: true,
            ),
          ],
        ));
  }
}
