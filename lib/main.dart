import 'package:crafty_app/core/helper_functions/on_generate_routes.dart';
import 'package:crafty_app/features/splash_screen/presentation/view/splash_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Crafty());
}

class Crafty extends StatelessWidget {
  const Crafty({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerateRoute,
      initialRoute: SplashView.routeName,
    );
  }
}
