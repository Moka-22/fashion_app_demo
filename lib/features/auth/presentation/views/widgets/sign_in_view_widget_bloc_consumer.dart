import 'package:fashion_app/core/components/custom_progress_hud.dart';
import 'package:fashion_app/core/helper_function/build_error_bar.dart';
import 'package:fashion_app/core/helper_function/bulid_success_bar.dart';
import 'package:fashion_app/features/auth/presentation/controller/cubit/cubit/sign_in_cubit_cubit.dart';
import 'package:fashion_app/features/auth/presentation/controller/cubit/cubit/sign_in_cubit_state.dart';
import 'package:fashion_app/features/auth/presentation/views/widgets/sign_in_view_widget.dart';
import 'package:fashion_app/features/home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInViewWidgetBlocConsumer extends StatelessWidget {
  const SignInViewWidgetBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is AuthSuccess) {
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (_) => HomeView(userName: state.userName),
            ),
            (route) => false,
          );
          successSignIn(context);
        }
        if (state is AuthFailure) {
          buildErrorBar(context, state.message);
        }
      },
      builder: (context, state) {
        return CustomProgressHud(
          isLoading: state is AuthLoading ? true : false,
          child: SignInViewWidget(),
        );
      },
    );
  }
}
