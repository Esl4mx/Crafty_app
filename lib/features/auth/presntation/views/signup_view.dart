import 'package:crafty_app/core/services/git_it_service.dart';
import 'package:crafty_app/core/wigets/custom_app_bar.dart';
import 'package:crafty_app/features/auth/domain/repos/auth_repo.dart';
import 'package:crafty_app/features/auth/presntation/cubits/signup_cubit/signup_cubit.dart';
import 'package:crafty_app/features/auth/presntation/views/widgets/signup_view_body.dart';
import 'package:crafty_app/features/auth/presntation/views/widgets/signup_view_body_bloc_consumer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  static const String routeName = 'signup';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignupCubit(getIt<AuthRepo>()),
      child: Scaffold(
        appBar: CustomAppBar(
            leading: const Icon(Icons.arrow_back),
            leadingOnTap: () {
              Navigator.pop(context);
            }),
        body: const SignupViewBodyBlocConsumer(),
      ),
    );
  }
}
