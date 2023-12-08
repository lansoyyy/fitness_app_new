import 'package:flutter/material.dart';
import 'package:lance_s_application10/core/app_export.dart';
import 'package:lance_s_application10/widgets/custom_elevated_button.dart';

class StartUpScreen extends StatelessWidget {
  const StartUpScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgShape,
                height: 112.v,
                width: 188.h,
                alignment: Alignment.centerLeft,
              ),
              SizedBox(height: 75.v),
              CustomImageView(
                imagePath: ImageConstant.imgUndrawFitness,
                height: 234.v,
                width: 275.h,
              ),
              SizedBox(height: 2.v),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 18.h),
                  child: Text(
                    "Let’s Track your Improvement!",
                    style: theme.textTheme.titleLarge,
                  ),
                ),
              ),
              SizedBox(height: 18.v),
              SizedBox(
                width: 237.h,
                child: Text(
                  "The fitness apps promoted people’s exercise behavior and habits significantly. It can exercise anytime, anywhere, on-demands occurs, and life-long fitness.",
                  maxLines: 5,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodyMedium,
                ),
              ),
              SizedBox(height: 40.v),
              CustomElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(
                      context, AppRoutes.homescreenContainerScreen);
                },
                text: "Get Started",
                margin: EdgeInsets.symmetric(horizontal: 25.h),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }
}
