import 'package:almohsen_s_application10/widgets/custom_elevated_button.dart';
import 'package:almohsen_s_application10/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application10/core/app_export.dart';
import 'controller/login_controller.dart';
import 'package:almohsen_s_application10/domain/facebookauth/facebook_auth_helper.dart';
import 'package:almohsen_s_application10/domain/googleauth/google_auth_helper.dart';

class LoginScreen extends GetWidget<LoginController> {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.deepPurpleA200,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildStackView(),
                  SizedBox(height: 62.v),
                  _buildInfoTitle(),
                  SizedBox(height: 33.v),
                  _buildSocial(),
                  SizedBox(height: 50.v),
                  CustomElevatedButton(
                      text: "lbl_log_in".tr,
                      margin: EdgeInsets.symmetric(horizontal: 16.h),
                      buttonStyle: CustomButtonStyles.fillPrimary,
                      onPressed: () {
                        onTapLogIn();
                      }),
                  SizedBox(height: 28.v),
                  CustomOutlinedButton(
                      height: 50.v,
                      text: "lbl_sign_up".tr,
                      margin: EdgeInsets.symmetric(horizontal: 16.h),
                      buttonStyle: CustomButtonStyles.outlinePrimary,
                      buttonTextStyle: CustomTextStyles.titleMedium18,
                      onPressed: () {
                        onTapSignUp();
                      }),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  Widget _buildStackView() {
    return SizedBox(
        height: 243.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.bottomRight, children: [
          CustomImageView(
              imagePath: ImageConstant.imgRectangle3800,
              height: 158.v,
              width: 122.h,
              radius: BorderRadius.circular(12.h),
              alignment: Alignment.bottomCenter,
              margin: EdgeInsets.only(bottom: 10.v)),
          CustomImageView(
              imagePath: ImageConstant.imgRectangle3801,
              height: 158.v,
              width: 8.h,
              radius: BorderRadius.circular(4.h),
              alignment: Alignment.bottomRight),
          Align(
              alignment: Alignment.center,
              child: Container(
                  height: 243.v,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment(0.5, 0),
                          end: Alignment(0.5, 1),
                          colors: [
                        theme.colorScheme.primary.withOpacity(0),
                        appTheme.deepPurpleA200
                      ])))),
          Align(
              alignment: Alignment.topLeft,
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgRectangle3799,
                    height: 158.v,
                    width: 8.h,
                    radius: BorderRadius.circular(4.h),
                    margin: EdgeInsets.only(top: 32.v, bottom: 6.v)),
                CustomImageView(
                    imagePath: ImageConstant.imgRectangle3799158x122,
                    height: 158.v,
                    width: 122.h,
                    radius: BorderRadius.circular(12.h),
                    margin:
                        EdgeInsets.only(left: 8.h, top: 13.v, bottom: 25.v)),
                CustomImageView(
                    imagePath: ImageConstant.imgRectangle3803,
                    height: 67.v,
                    width: 122.h,
                    radius: BorderRadius.circular(12.h),
                    margin: EdgeInsets.only(left: 8.h, bottom: 129.v)),
                CustomImageView(
                    imagePath: ImageConstant.imgRectangle3802,
                    height: 158.v,
                    width: 122.h,
                    radius: BorderRadius.circular(12.h),
                    margin: EdgeInsets.only(left: 8.h, top: 38.v))
              ]))
        ]));
  }

  /// Section Widget
  Widget _buildInfoTitle() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
              width: 343.h,
              margin: EdgeInsets.only(right: 38.h),
              child: Text("msg_find_new_friend_connection".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.headlineLargePrimary
                      .copyWith(height: 1.50))),
          SizedBox(height: 10.v),
          Container(
              width: 372.h,
              margin: EdgeInsets.only(right: 9.h),
              child: Text("msg_with_billions_of".tr,
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.titleMedium!.copyWith(height: 1.50)))
        ]));
  }

  /// Section Widget
  Widget _buildSocial() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 141.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: EdgeInsets.only(left: 14.h),
              child: Text("lbl_or_login_with".tr,
                  style: CustomTextStyles.bodyLargePrimary)),
          SizedBox(height: 19.v),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Expanded(
                child: CustomImageView(
                    imagePath: ImageConstant.imgFacebook,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    margin: EdgeInsets.only(right: 15.h),
                    onTap: () {
                      onTapImgFacebook();
                    })),
            Expanded(
                child: CustomImageView(
                    imagePath: ImageConstant.imgTrash,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    margin: EdgeInsets.symmetric(horizontal: 15.h))),
            Expanded(
                child: CustomImageView(
                    imagePath: ImageConstant.imgGoogle,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    margin: EdgeInsets.only(left: 15.h),
                    onTap: () {
                      onTapImgGoogle();
                    }))
          ])
        ]));
  }

  onTapImgFacebook() async {
    await FacebookAuthHelper().facebookSignInProcess().then((facebookUser) {
      //TODO Actions to be performed after signin
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }

  onTapImgGoogle() async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
      if (googleUser != null) {
        //TODO Actions to be performed after signin
      } else {
        Get.snackbar('Error', 'user data is empty');
      }
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }

  /// Navigates to the logInScreen when the action is triggered.
  onTapLogIn() {
    Get.toNamed(
      AppRoutes.logInScreen,
    );
  }

  /// Navigates to the signUpScreen when the action is triggered.
  onTapSignUp() {
    Get.toNamed(
      AppRoutes.signUpScreen,
    );
  }
}
