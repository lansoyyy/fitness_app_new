import 'package:flutter/material.dart';
import 'package:lance_s_application10/core/app_export.dart';
import 'package:lance_s_application10/presentation/homescreen_page/homescreen_page.dart';
import 'package:lance_s_application10/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class HomescreenContainerScreen extends StatelessWidget {
  HomescreenContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: navigatorKey,
                initialRoute: AppRoutes.homescreenPage,
                onGenerateRoute: (routeSetting) => PageRouteBuilder(
                    pageBuilder: (ctx, ani, ani1) =>
                        getCurrentPage(routeSetting.name!),
                    transitionDuration: Duration(seconds: 0))),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return "/";
      case BottomBarEnum.Vectorblack90020x25:
        return "/";
      case BottomBarEnum.Bell:
        return "/";
      case BottomBarEnum.Vectorblack90025x25:
        return AppRoutes.homescreenPage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homescreenPage:
        return Padding(
          padding: const EdgeInsets.only(top: 10),
          child: HomescreenPage(),
        );
      default:
        return HomescreenPage();
    }
  }
}
