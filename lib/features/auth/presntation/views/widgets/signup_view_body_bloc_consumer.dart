import 'package:crafty_app/features/auth/presntation/cubits/signup_cubit/signup_cubit.dart';
import 'package:crafty_app/features/auth/presntation/views/widgets/signup_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupViewBodyBlocConsumer extends StatelessWidget {
  const SignupViewBodyBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignupCubit, SignupState>(
      listener: (context, state) {},
      builder: (context, state) {
        return const SignupViewBody();
      },
    );
  }
}
