import 'package:crafty_app/core/wigets/custom_app_bar.dart';
import 'package:crafty_app/features/profile/presentation/views/widgets/profile_view_body.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});
  static const String routeName = "profile";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leading: const Icon(Icons.arrow_back),
        leadingOnTap: () {
          Navigator.pop(context);
        },
        title: "Profile",
      ),
      body: ProfileViewBody(),
    );
  }
}
