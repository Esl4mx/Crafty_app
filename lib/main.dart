import 'package:crafty_app/core/helper_functions/on_generate_routes.dart';
import 'package:crafty_app/core/services/shared_preferences_singleton.dart';
import 'package:crafty_app/core/wigets/app_layout_views.dart';
import 'package:crafty_app/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await prefs.init();
  runApp(const Crafty());
}

class Crafty extends StatelessWidget {
  const Crafty({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          fontFamily: "Switzer",
          appBarTheme: const AppBarTheme(backgroundColor: Color(0xffF9F9F9)),
          scaffoldBackgroundColor: const Color(0xffF9F9F9)),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerateRoute,
      initialRoute: AppLayoutViews.routeName,
    );
  }
}
