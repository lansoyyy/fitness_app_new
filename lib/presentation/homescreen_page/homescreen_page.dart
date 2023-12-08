import 'package:flutter/material.dart';
import 'package:lance_s_application10/core/app_export.dart';
import 'package:lance_s_application10/widgets/app_bar/appbar_subtitle.dart';
import 'package:lance_s_application10/widgets/app_bar/appbar_title.dart';
import 'package:lance_s_application10/widgets/app_bar/appbar_title_circleimage.dart';
import 'package:lance_s_application10/widgets/app_bar/appbar_trailing_image.dart';
import 'package:lance_s_application10/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class HomescreenPage extends StatelessWidget {
  const HomescreenPage({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: SizedBox(
            height: 72.v,
            width: 77.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 72.v,
                    width: 77.h,
                    decoration: BoxDecoration(
                      color: theme.colorScheme.primary,
                      borderRadius: BorderRadius.circular(
                        38.h,
                      ),
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgVectorWhiteA700,
                  height: 21.adaptSize,
                  width: 21.adaptSize,
                  alignment: Alignment.center,
                ),
              ],
            ),
          ),
        ),
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 19.h),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(height: 35.v),
                _buildThirteen(context),
                SizedBox(height: 9.v),
                Container(
                  height: 4.v,
                  width: 40.h,
                  decoration: BoxDecoration(
                    color: appTheme.gray400,
                  ),
                ),
                SizedBox(height: 29.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 5.h,
                    right: 7.h,
                  ),
                  child: _buildSeventeen(
                    context,
                    image1: ImageConstant.imgRectangle10,
                    image2: ImageConstant.imgRectangle5,
                  ),
                ),
                SizedBox(height: 7.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 12.h,
                    right: 25.h,
                  ),
                  child: _buildFifteen(
                    context,
                    calorieDeficitText: "DAILY ACTIVITIES",
                    stepTrackerText: "WATER INTAKE",
                  ),
                ),
                SizedBox(height: 28.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 6.h),
                  child: _buildSeventeen(
                    context,
                    image1: ImageConstant.imgRectangle6,
                    image2: ImageConstant.imgRectangle7,
                  ),
                ),
                SizedBox(height: 7.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 12.h,
                    right: 25.h,
                  ),
                  child: _buildFifteen(
                    context,
                    calorieDeficitText: "CALORIE DEFICIT",
                    stepTrackerText: "STEP TRACKER",
                  ),
                ),
                SizedBox(height: 4.v),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: Padding(
        padding: EdgeInsets.only(left: 29.h),
        child: Row(
          children: [
            AppbarTitleCircleimage(
              imagePath: ImageConstant.imgEllipse3,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 22.h,
                top: 14.v,
                bottom: 11.v,
              ),
              child: Column(
                children: [
                  AppbarTitle(
                    text: "Hello Jan! ",
                    margin: EdgeInsets.only(
                      left: 4.h,
                      right: 24.h,
                    ),
                  ),
                  SizedBox(height: 1.v),
                  AppbarSubtitle(
                    text: "Janjaranjan_0422",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgVector,
          margin: EdgeInsets.fromLTRB(25.h, 29.v, 25.h, 33.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildThirteen(BuildContext context) {
    return SizedBox(
      height: 67.v,
      width: 336.h,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              "SUN",
              style: theme.textTheme.bodyLarge,
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 51.h),
              child: Text(
                "MON",
                style: theme.textTheme.bodyLarge,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 105.h),
              child: Text(
                "TUE",
                style: theme.textTheme.bodyLarge,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Text(
              "WED",
              style: theme.textTheme.bodyLarge,
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.only(right: 104.h),
              child: Text(
                "THU",
                style: theme.textTheme.bodyLarge,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.only(right: 59.h),
              child: Text(
                "FRI",
                style: theme.textTheme.bodyLarge,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.only(right: 6.h),
              child: Text(
                "SAT",
                style: theme.textTheme.bodyLarge,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(top: 23.v),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 42.h,
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.h,
                      vertical: 6.v,
                    ),
                    decoration: AppDecoration.fillBlueGray.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder22,
                    ),
                    child: Text(
                      "1",
                      style: theme.textTheme.titleLarge,
                    ),
                  ),
                  Container(
                    width: 42.h,
                    padding: EdgeInsets.symmetric(
                      horizontal: 15.h,
                      vertical: 6.v,
                    ),
                    decoration: AppDecoration.fillBlueGray.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder22,
                    ),
                    child: Text(
                      "2",
                      style: theme.textTheme.titleLarge,
                    ),
                  ),
                  Container(
                    width: 42.h,
                    padding: EdgeInsets.symmetric(
                      horizontal: 14.h,
                      vertical: 6.v,
                    ),
                    decoration: AppDecoration.fillBlueGray.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder22,
                    ),
                    child: Text(
                      "3",
                      style: theme.textTheme.titleLarge,
                    ),
                  ),
                  Container(
                    width: 42.h,
                    padding: EdgeInsets.symmetric(
                      horizontal: 13.h,
                      vertical: 6.v,
                    ),
                    decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder22,
                    ),
                    child: Text(
                      "4",
                      style: theme.textTheme.titleLarge,
                    ),
                  ),
                  Container(
                    width: 42.h,
                    padding: EdgeInsets.symmetric(
                      horizontal: 13.h,
                      vertical: 6.v,
                    ),
                    decoration: AppDecoration.fillBlueGray.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder22,
                    ),
                    child: Text(
                      "5",
                      style: theme.textTheme.titleLarge,
                    ),
                  ),
                  Container(
                    width: 42.h,
                    padding: EdgeInsets.symmetric(
                      horizontal: 14.h,
                      vertical: 6.v,
                    ),
                    decoration: AppDecoration.fillBlueGray.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder22,
                    ),
                    child: Text(
                      "6",
                      style: theme.textTheme.titleLarge,
                    ),
                  ),
                  Container(
                    width: 42.h,
                    padding: EdgeInsets.symmetric(
                      horizontal: 15.h,
                      vertical: 6.v,
                    ),
                    decoration: AppDecoration.fillBlueGray.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder22,
                    ),
                    child: Text(
                      "7",
                      style: theme.textTheme.titleLarge,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildSeventeen(
    BuildContext context, {
    required String image1,
    required String image2,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: CustomImageView(
            imagePath: image1,
            height: 149.v,
            width: 153.h,
            radius: BorderRadius.circular(
              14.h,
            ),
            margin: EdgeInsets.only(right: 9.h),
          ),
        ),
        Expanded(
          child: CustomImageView(
            imagePath: image2,
            height: 149.v,
            width: 153.h,
            radius: BorderRadius.circular(
              14.h,
            ),
            margin: EdgeInsets.only(left: 9.h),
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildFifteen(
    BuildContext context, {
    required String calorieDeficitText,
    required String stepTrackerText,
  }) {
    return Row(
      children: [
        Text(
          calorieDeficitText,
          style: CustomTextStyles.bodyMedium14.copyWith(
            color: appTheme.black900.withOpacity(0.78),
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgVectorBlack900,
          height: 15.v,
          width: 10.h,
          margin: EdgeInsets.only(
            left: 12.h,
            top: 3.v,
          ),
        ),
        Spacer(),
        Text(
          stepTrackerText,
          style: CustomTextStyles.bodyMedium14.copyWith(
            color: appTheme.black900.withOpacity(0.78),
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgVectorBlack900,
          height: 15.v,
          width: 10.h,
          margin: EdgeInsets.only(
            left: 8.h,
            top: 3.v,
          ),
        ),
      ],
    );
  }
}
