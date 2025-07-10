
import 'package:fashion_app/core/components/custom_button.dart';
import 'package:fashion_app/core/components/custom_text_field.dart';
import 'package:fashion_app/core/components/head_line_text.dart';
import 'package:fashion_app/core/components/second_head_line_text.dart';
import 'package:fashion_app/features/auth/presentation/views/widgets/do_you_have_account_widget.dart';
import 'package:fashion_app/features/auth/presentation/views/widgets/password_field.dart';
import 'package:flutter/material.dart';


class SignUpViewWidget extends StatefulWidget {
  const SignUpViewWidget({super.key});

  @override
  State<SignUpViewWidget> createState() => _SignUpViewWidgetState();
}

class _SignUpViewWidgetState extends State<SignUpViewWidget> {
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;
  late String email, password, userName;

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final double horizontalPadding = size.width * 0.05;
    final double verticalSpacing = size.height * 0.02;
    final double buttonWidth = size.width * 0.8;

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
                text: 'Sign Up',
              ),
              SizedBox(height: verticalSpacing),
              // Name Field
              SecondHeadLineText(text: 'Name'),
              SizedBox(height: verticalSpacing / 2),
              CustomTextField(
                hintText: 'Enter Your Name',
                textInputType: TextInputType.name,
                onSaved: (value) {
                  userName = value!;
                },
                prefixIcon: Icon(Icons.person),
              ),
              SizedBox(height: verticalSpacing),
              // Email Field
              SecondHeadLineText(text: 'Email'),
              SizedBox(height: verticalSpacing / 2),
              CustomTextField(
                hintText: 'Enter Your Email',
                textInputType: TextInputType.emailAddress,
                onSaved: (value) {
                  email = value!;
                },
                prefixIcon: Icon(Icons.email_outlined),
              ),
              SizedBox(height: verticalSpacing),
              // Password Field
              SecondHeadLineText(text: 'Password'),
              SizedBox(height: verticalSpacing / 2),
              PasswordField(
                onSaved: (value) {
                  password = value!;
                },
              ),
              SizedBox(height: verticalSpacing * 2),
              // Signup Button
              Center(
                child: CustomButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      // context
                      //     .read<SignupCubit>()
                      //     .createUserWithEmailAndPassword(
                      //         email, password, userName);
                    } else {
                      setState(() {
                        autoValidateMode = AutovalidateMode.always;
                      });
                    }
                  },
                  text: 'Sign Up',
                  width: buttonWidth,
                  backGroundColor: Colors.grey,
                ),
              ),
              SizedBox(height: verticalSpacing * 2),
              // Already Have Account Widget
              DoYouHaveAccountWidget(),
              SizedBox(height: verticalSpacing),
            ],
          ),
        ),
      ),
    );
  }
}
