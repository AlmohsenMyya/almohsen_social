import 'package:flutter/material.dart';
import 'package:almohsen_s_application10/core/app_export.dart';
import 'controller/app_navigation_controller.dart';

// ignore_for_file: must_be_immutable
class AppNavigationScreen extends GetWidget<AppNavigationController> {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          screenTitle: "Splash".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.splashScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Login Screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.loginScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Log In".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.logInScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Forgot Password".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.forgotPasswordScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Sign Up".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signUpScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Notification".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.notificationScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Invite Friends".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.inviteFriendsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Daily New - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.dailyNewTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Trending - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.trendingTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Stories - Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.storiesContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Trending posts - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.trendingPostsTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Stories and Tweets".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.storiesAndTweetsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Search".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.searchScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Live".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.liveScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "For You".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.forYouScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Page View".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.pageViewScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Comments".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.commentsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Account View".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.accountViewScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Account Details".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.accountDetailsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Chat".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.chatScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Friends".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.friendsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Detailed Profile".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.detailedProfileScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation() {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle({
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    Get.toNamed(routeName);
  }
}
