
import 'package:fashion_app/core/components/custom_button.dart';
import 'package:fashion_app/core/components/custom_text_field.dart';
import 'package:fashion_app/core/components/head_line_text.dart';
import 'package:fashion_app/core/utils/app_images.dart';
import 'package:fashion_app/features/auth/presentation/controller/cubit/cubit/sign_in_cubit_cubit.dart';
import 'package:fashion_app/features/auth/presentation/views/widgets/auth_text_widget.dart';
import 'package:fashion_app/features/auth/presentation/views/widgets/divider_widget.dart';
import 'package:fashion_app/features/auth/presentation/views/widgets/donot_have_account_widget.dart';
import 'package:fashion_app/features/auth/presentation/views/widgets/password_field.dart';
import 'package:fashion_app/features/auth/presentation/views/widgets/social_login_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



class SignInViewWidget extends StatefulWidget {
  const SignInViewWidget({super.key});

  @override
  State<SignInViewWidget> createState() => _SignInViewWidgetState();
}

class _SignInViewWidgetState extends State<SignInViewWidget> {
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;
  late String userName, password;

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final double horizontalPadding = size.width * 0.05;
    final double verticalSpacing = size.height * 0.02;
    final double buttonWidth = size.width * 0.4;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      child: SingleChildScrollView(
        child: Form(
          key: formKey,
          autovalidateMode: autoValidateMode,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: verticalSpacing * 2),
              HeadLineText(
                text: 'Log into \nyour account',
              ),
              SizedBox(height: verticalSpacing * 3),
              // UserName Field
              CustomTextField(
                hintText: 'UserName',
                textInputType: TextInputType.emailAddress,
                onSaved: (value) {
                  userName = value!;
                },
              ),
              SizedBox(height: verticalSpacing * 2),
              // Password Field
              PasswordField(
                onSaved: (value) {
                  password = value!;
                },
              ),
              // Forget Password
              Align(
                alignment: Alignment.bottomRight,
                child: TextButton(
                  onPressed: () {},
                  child: AuthTextWidget(
                    text: 'Forget Password?',
                  ),
                ),
              ),
              SizedBox(height: verticalSpacing * 2),
              // Login Button
              Center(
                child: CustomButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                    context.read<AuthCubit>().login(userName, password);
                    } else {
                      setState(() {
                        autoValidateMode = AutovalidateMode.always;
                      });
                    }
                  },
                  text: 'LOG IN',
                  width: buttonWidth, backGroundColor: Color(0xff2D201C),
                  // backGroundColor: AppColors.primaryColor,
                ),
              ),
              SizedBox(height: verticalSpacing),
              // Divider
              DividerWidget(),
              SizedBox(height: verticalSpacing),
              // Social Login Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 10,
                children: [
                  SocialLoginButton(
                    image: Assets.imagesSocialApple,
                    onPressed: () {
                    },
                  ),
                  SocialLoginButton(
                    image: Assets.imagesSocialGoogle,
                    onPressed: () {
                    },
                  ),
                  SocialLoginButton(
                    image: Assets.imagesSocialFacebook,
                    onPressed: () {
                    },
                  ),
                ],
              ),
              SizedBox(height: verticalSpacing * 2),
              // Don't Have Account Text
              DonotHaveAccountWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
