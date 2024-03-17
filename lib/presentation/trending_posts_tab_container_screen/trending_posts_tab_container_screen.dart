import 'package:almohsen_s_application10/presentation/messages_page/messages_page.dart';
import 'package:almohsen_s_application10/presentation/notifications_page/notifications_page.dart';
import 'package:almohsen_s_application10/presentation/profile_page/profile_page.dart';
import 'package:almohsen_s_application10/widgets/app_bar/custom_app_bar.dart';
import 'package:almohsen_s_application10/widgets/app_bar/appbar_title_searchview.dart';
import 'package:almohsen_s_application10/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:almohsen_s_application10/presentation/trending_posts_page/trending_posts_page.dart';
import 'package:almohsen_s_application10/presentation/discover_page/discover_page.dart';
import 'package:almohsen_s_application10/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application10/core/app_export.dart';
import 'controller/trending_posts_tab_container_controller.dart';

// ignore_for_file: must_be_immutable
class TrendingPostsTabContainerScreen
    extends GetWidget<TrendingPostsTabContainerController> {
  const TrendingPostsTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 29.v),
              _buildTabview(),
              SizedBox(
                height: 662.v,
                child: TabBarView(
                  controller: controller.tabviewController,
                  children: [
                    TrendingPostsPage(),
                    TrendingPostsPage(),
                    DiscoverPage(),
                    DiscoverPage(),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      title: AppbarTitleSearchview(
        margin: EdgeInsets.only(left: 16.h),
        hintText: "lbl_search".tr,
        controller: controller.searchController,
      ),
      actions: [
        AppbarTrailingIconbutton(
          imagePath: ImageConstant.imgGroup9086,
          margin: EdgeInsets.fromLTRB(16.h, 5.v, 19.h, 5.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildTabview() {
    return Container(
      height: 30.v,
      width: 398.h,
      child: TabBar(
        controller: controller.tabviewController,
        isScrollable: true,
        labelColor: appTheme.deepPurpleA200,
        unselectedLabelColor: appTheme.indigo100,
        tabs: [
          Tab(
            child: Text(
              "lbl_trending".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_latest".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_discover".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_daily_new".tr,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Get.toNamed(getCurrentRoute(type), id: 1);
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return "/";
      case BottomBarEnum.Streams:
        return "/";
      case BottomBarEnum.Messages:
        return AppRoutes.messagesPage;
      case BottomBarEnum.Notifications:
        return AppRoutes.notificationsPage;
      case BottomBarEnum.Profile:
        return AppRoutes.profilePage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.messagesPage:
        return MessagesPage();
      case AppRoutes.notificationsPage:
        return NotificationsPage();
      case AppRoutes.profilePage:
        return ProfilePage();
      default:
        return DefaultWidget();
    }
  }
}
