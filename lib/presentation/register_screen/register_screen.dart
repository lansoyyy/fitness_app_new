import 'package:flutter/material.dart';
import 'package:lance_s_application10/core/app_export.dart';
import 'package:lance_s_application10/widgets/custom_elevated_button.dart';
import 'package:lance_s_application10/widgets/custom_text_form_field.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController fullNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmpasswordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgShape,
                  height: 124.v,
                  width: 188.h,
                  alignment: Alignment.centerLeft,
                ),
                SizedBox(height: 14.v),
                Text(
                  "Welcome Onboard!",
                  style: theme.textTheme.titleLarge,
                ),
                SizedBox(height: 17.v),
                Text(
                  "Let’s track your fitness journey.",
                  style: theme.textTheme.bodyMedium,
                ),
                SizedBox(height: 73.v),
                _buildFullName(context),
                SizedBox(height: 18.v),
                _buildEmail(context),
                SizedBox(height: 18.v),
                _buildPassword(context),
                SizedBox(height: 20.v),
                _buildConfirmpassword(context),
                SizedBox(height: 70.v),
                _buildREGISTER(context),
                SizedBox(height: 37.v),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Already have an account? ",
                        style: theme.textTheme.bodyMedium,
                      ),
                      TextSpan(
                        text: " ",
                      ),
                      TextSpan(
                        text: "Sign In ",
                        style: theme.textTheme.labelLarge,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFullName(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.h),
      child: CustomTextFormField(
        controller: fullNameController,
        hintText: "Enter your full name",
      ),
    );
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.h),
      child: CustomTextFormField(
        controller: emailController,
        hintText: "Enter your email      ",
        textInputType: TextInputType.emailAddress,
        contentPadding: EdgeInsets.symmetric(
          horizontal: 12.h,
          vertical: 17.v,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.h),
      child: CustomTextFormField(
        controller: passwordController,
        hintText: "Enter password",
        textInputType: TextInputType.visiblePassword,
        obscureText: true,
        contentPadding: EdgeInsets.symmetric(
          horizontal: 12.h,
          vertical: 17.v,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildConfirmpassword(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.h),
      child: CustomTextFormField(
        controller: confirmpasswordController,
        hintText: "Confirm Password",
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        obscureText: true,
      ),
    );
  }

  /// Section Widget
  Widget _buildREGISTER(BuildContext context) {
    return CustomElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, AppRoutes.startUpScreen);
      },
      text: "REGISTER",
      margin: EdgeInsets.symmetric(horizontal: 25.h),
    );
  }
}
