import 'package:almohsen_s_application10/widgets/app_bar/custom_app_bar.dart';
import 'package:almohsen_s_application10/widgets/app_bar/appbar_leading_image.dart';
import 'package:almohsen_s_application10/widgets/app_bar/appbar_trailing_image.dart';
import 'package:almohsen_s_application10/widgets/custom_icon_button.dart';
import 'package:almohsen_s_application10/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application10/core/app_export.dart';
import 'controller/account_view_controller.dart';

class AccountViewScreen extends GetWidget<AccountViewController> {
  const AccountViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: SizedBox(
                    height: 852.v,
                    width: double.maxFinite,
                    child: Stack(alignment: Alignment.bottomCenter, children: [
                      Align(
                          alignment: Alignment.topCenter,
                          child: SizedBox(
                              height: 645.v,
                              width: double.maxFinite,
                              child: Stack(
                                  alignment: Alignment.topCenter,
                                  children: [
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgRectangle3809,
                                        height: 645.v,
                                        width: 414.h,
                                        alignment: Alignment.center),
                                    _buildElevenStack()
                                  ]))),
                      Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                              margin: EdgeInsets.only(top: 71.v),
                              decoration: AppDecoration
                                  .gradientOnPrimaryContainerToBlueGray,
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    SizedBox(height: 89.v),
                                    CustomIconButton(
                                        height: 130.adaptSize,
                                        width: 130.adaptSize,
                                        child: CustomImageView(
                                            imagePath: ImageConstant.imgGroup)),
                                    Spacer(),
                                    _buildAccountDetailsColumn()
                                  ])))
                    ])))));
  }

  /// Section Widget
  PreferredSizeWidget _buildElevenStack() {
    return CustomAppBar(
        height: 37.v,
        leadingWidth: 40.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowBackDeepPurpleA200,
            margin: EdgeInsets.only(left: 16.h),
            onTap: () {
              onTapArrowBack();
            }),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgSettings,
              margin: EdgeInsets.symmetric(horizontal: 16.h))
        ]);
  }

  /// Section Widget
  Widget _buildFollowDetailsRow() {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
              imagePath: ImageConstant.imgEllipse11,
              height: 50.adaptSize,
              width: 50.adaptSize,
              radius: BorderRadius.circular(25.h)),
          Padding(
              padding: EdgeInsets.only(left: 24.h, top: 2.v),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("lbl_rosalia".tr,
                        style: CustomTextStyles.titleLargePrimary),
                    SizedBox(height: 6.v),
                    Text("lbl_rose23".tr, style: theme.textTheme.bodyMedium)
                  ])),
          Spacer(),
          CustomOutlinedButton(
              width: 76.h,
              text: "lbl_follow".tr,
              margin: EdgeInsets.symmetric(vertical: 9.v),
              buttonStyle: CustomButtonStyles.outlinePrimaryTL16,
              buttonTextStyle: CustomTextStyles.titleSmallPrimary)
        ]);
  }

  /// Section Widget
  Widget _buildAccountCountsRow() {
    return Padding(
        padding: EdgeInsets.only(left: 10.h, right: 7.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Column(children: [
            Text("lbl_post".tr, style: CustomTextStyles.titleLargeGray200),
            SizedBox(height: 10.v),
            Text("lbl_75".tr, style: CustomTextStyles.titleLargePrimary)
          ]),
          _buildFollowersColumn(
              followersText: "lbl_following".tr, zipcodeText: "lbl_3400".tr),
          _buildFollowersColumn(
              followersText: "lbl_followers".tr, zipcodeText: "lbl_6500".tr)
        ]));
  }

  /// Section Widget
  Widget _buildActionRow() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 34.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          CustomIconButton(
              height: 50.adaptSize,
              width: 50.adaptSize,
              padding: EdgeInsets.all(13.h),
              decoration: IconButtonStyleHelper.fillPrimary,
              onTap: () {
                onTapBtnPersonAddAltOne();
              },
              child:
                  CustomImageView(imagePath: ImageConstant.imgPersonAddAlt1)),
          CustomIconButton(
              height: 50.adaptSize,
              width: 50.adaptSize,
              padding: EdgeInsets.all(13.h),
              decoration: IconButtonStyleHelper.fillPrimary,
              child: CustomImageView(imagePath: ImageConstant.imgGroup9036)),
          CustomIconButton(
              height: 50.adaptSize,
              width: 50.adaptSize,
              padding: EdgeInsets.all(13.h),
              decoration: IconButtonStyleHelper.fillPrimary,
              child: CustomImageView(imagePath: ImageConstant.imgCall))
        ]));
  }

  /// Section Widget
  Widget _buildAccountDetailsColumn() {
    return GestureDetector(
        onTap: () {
          onTapAccountDetailsColumn();
        },
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 33.v),
            decoration: AppDecoration.white
                .copyWith(borderRadius: BorderRadiusStyle.customBorderTL30),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              _buildFollowDetailsRow(),
              SizedBox(height: 30.v),
              _buildAccountCountsRow(),
              SizedBox(height: 26.v),
              _buildActionRow(),
              SizedBox(height: 24.v)
            ])));
  }

  /// Common widget
  Widget _buildFollowersColumn({
    required String followersText,
    required String zipcodeText,
  }) {
    return Column(children: [
      Text(followersText,
          style: CustomTextStyles.titleLargeGray200
              .copyWith(color: appTheme.gray200)),
      SizedBox(height: 10.v),
      Text(zipcodeText,
          style: CustomTextStyles.titleLargePrimary
              .copyWith(color: theme.colorScheme.primary))
    ]);
  }

  /// Navigates to the previous screen.
  onTapArrowBack() {
    Get.back();
  }

  /// Navigates to the accountDetailsScreen when the action is triggered.
  onTapAccountDetailsColumn() {
    Get.toNamed(
      AppRoutes.accountDetailsScreen,
    );
  }

  /// Opens a URL in the device's default web browser.
  ///
  /// The [context] parameter is the `BuildContext` of the widget that invoked the function.
  ///
  /// Throws an exception if the URL could not be launched.
  onTapBtnPersonAddAltOne() async {
    var url = 'https://accounts.google.com/';
    if (!await launchUrlString(url)) {
      throw 'Could not launch https://accounts.google.com/';
    }
  }
}
