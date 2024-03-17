import 'package:almohsen_s_application10/widgets/app_bar/custom_app_bar.dart';
import 'package:almohsen_s_application10/widgets/app_bar/appbar_leading_image.dart';
import 'package:almohsen_s_application10/core/utils/validation_functions.dart';
import 'package:almohsen_s_application10/widgets/custom_text_form_field.dart';
import 'package:almohsen_s_application10/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application10/core/app_export.dart';
import 'controller/log_in_controller.dart';

// ignore_for_file: must_be_immutable
class LogInScreen extends GetWidget<LogInController> {
  LogInScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: appTheme.deepPurpleA200,
            appBar: _buildAppBar(),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.only(
                                left: 16.h, top: 79.v, right: 16.h),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  _buildPageTitle(),
                                  SizedBox(height: 33.v),
                                  CustomTextFormField(
                                      controller: controller.emailController,
                                      hintText: "lbl_email_id".tr,
                                      textInputType: TextInputType.emailAddress,
                                      validator: (value) {
                                        if (value == null ||
                                            (!isValidEmail(value,
                                                isRequired: true))) {
                                          return "err_msg_please_enter_valid_email"
                                              .tr;
                                        }
                                        return null;
                                      }),
                                  SizedBox(height: 24.v),
                                  Obx(() => CustomTextFormField(
                                      controller: controller.passwordController,
                                      hintText: "lbl_password".tr,
                                      textInputAction: TextInputAction.done,
                                      textInputType:
                                          TextInputType.visiblePassword,
                                      suffix: InkWell(
                                          onTap: () {
                                            controller.isShowPassword.value =
                                                !controller
                                                    .isShowPassword.value;
                                          },
                                          child: Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  30.h, 13.v, 16.h, 13.v),
                                              child: CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgAntdesigneyeinvisiblefilled,
                                                  height: 24.adaptSize,
                                                  width: 24.adaptSize))),
                                      suffixConstraints:
                                          BoxConstraints(maxHeight: 50.v),
                                      validator: (value) {
                                        if (value == null ||
                                            (!isValidPassword(value,
                                                isRequired: true))) {
                                          return "err_msg_please_enter_valid_password"
                                              .tr;
                                        }
                                        return null;
                                      },
                                      obscureText:
                                          controller.isShowPassword.value,
                                      contentPadding: EdgeInsets.only(
                                          left: 16.h,
                                          top: 15.v,
                                          bottom: 15.v))),
                                  SizedBox(height: 27.v),
                                  GestureDetector(
                                      onTap: () {
                                        onTapTxtForgotPassword();
                                      },
                                      child: Text("msg_forgot_password".tr,
                                          style: CustomTextStyles
                                              .bodyLargePrimary)),
                                  SizedBox(height: 30.v),
                                  CustomElevatedButton(
                                      text: "lbl_log_in".tr,
                                      buttonStyle:
                                          CustomButtonStyles.fillPrimary),
                                  SizedBox(height: 5.v)
                                ])))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        height: 47.v,
        leadingWidth: double.maxFinite,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowDown,
            margin: EdgeInsets.fromLTRB(26.h, 10.v, 364.h, 10.v)),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildPageTitle() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("msg_welcome_to_social".tr,
          style: CustomTextStyles.headlineLargePrimary),
      SizedBox(height: 12.v),
      Text("msg_please_enter_your".tr, style: CustomTextStyles.bodyLargePrimary)
    ]);
  }

  /// Navigates to the forgotPasswordScreen when the action is triggered.
  onTapTxtForgotPassword() {
    Get.toNamed(
      AppRoutes.forgotPasswordScreen,
    );
  }
}
