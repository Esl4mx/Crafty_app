import 'package:flutter/material.dart';

import '3d_model_view.dart';

class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ModelView(),
      ],
    );
  }
}
