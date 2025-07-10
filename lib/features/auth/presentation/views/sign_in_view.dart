import 'package:fashion_app/features/auth/presentation/controller/cubit/cubit/sign_in_cubit_cubit.dart';
import 'package:fashion_app/features/auth/presentation/views/widgets/sign_in_view_widget_bloc_consumer.dart';
import 'package:fashion_app/features/auth/presentation/domain/use_cases/get_user_use_case.dart';
import 'package:fashion_app/features/auth/presentation/domain/use_cases/refresh_token_use_case.dart';
import 'package:fashion_app/features/auth/presentation/domain/use_cases/sign_in_use_case.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:
          (context) => AuthCubit(
            GetIt.I.get<LoginUseCase>(),
            GetIt.I.get<GetMeUseCase>(),
            GetIt.I.get<RefreshTokenUseCase>(),
          ),
      child: Scaffold(
        appBar: AppBar(title: const Text('Sign In')),
        body: const SignInViewWidgetBlocConsumer(),
      ),
    );
  }
}
