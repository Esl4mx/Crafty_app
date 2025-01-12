import 'package:crafty_app/core/utlis/app_images.dart';
import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

class ModelView extends StatelessWidget {
  const ModelView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 300,
        child: ModelViewer(
          src: Assets.imagesModelsSofaChairNew,
          ar: true,
          autoRotate: true,
          disableZoom: true,
        ));
  }
}
