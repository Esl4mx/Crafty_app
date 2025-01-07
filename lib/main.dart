import 'package:crafty_app/core/helper_functions/on_generate_routes.dart';
import 'package:crafty_app/core/services/shared_preferences_singleton.dart';
import 'package:crafty_app/core/wigets/app_layout_views.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await prefs.init();
  runApp(const Crafty());
}

class Crafty extends StatelessWidget {
  const Crafty({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerateRoute,
      initialRoute: AppLayoutViews.routeName,
    );
  }
}
