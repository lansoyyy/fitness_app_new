import 'package:flutter/material.dart';
import 'package:lance_s_application10/core/app_export.dart';

class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}

class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgHome,
      activeIcon: ImageConstant.imgHome,
      type: BottomBarEnum.Home,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgVectorBlack90020x25,
      activeIcon: ImageConstant.imgVectorBlack90020x25,
      type: BottomBarEnum.Vectorblack90020x25,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgBell,
      activeIcon: ImageConstant.imgBell,
      type: BottomBarEnum.Bell,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgVectorBlack90025x25,
      activeIcon: ImageConstant.imgVectorBlack90025x25,
      type: BottomBarEnum.Vectorblack90025x25,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 118.v,
      decoration: BoxDecoration(
        color: theme.colorScheme.primaryContainer,
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: CustomImageView(
              imagePath: bottomMenuList[index].icon,
              height: 25.adaptSize,
              width: 25.adaptSize,
              color: appTheme.black900,
            ),
            activeIcon: Container(
              decoration: AppDecoration.fillPrimaryContainer,
              child: CustomImageView(
                imagePath: bottomMenuList[index].activeIcon,
                height: 25.adaptSize,
                width: 25.adaptSize,
                color: appTheme.black900,
              ),
            ),
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex = index;
          widget.onChanged?.call(bottomMenuList[index].type);
          setState(() {});
        },
      ),
    );
  }
}

enum BottomBarEnum {
  Home,
  Vectorblack90020x25,
  Bell,
  Vectorblack90025x25,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    required this.type,
  });

  String icon;

  String activeIcon;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
