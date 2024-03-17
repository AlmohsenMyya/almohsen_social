import 'package:almohsen_s_application10/widgets/app_bar/custom_app_bar.dart';
import 'package:almohsen_s_application10/widgets/app_bar/appbar_leading_image.dart';
import 'package:almohsen_s_application10/core/utils/validation_functions.dart';
import 'package:almohsen_s_application10/widgets/custom_text_form_field.dart';
import 'package:almohsen_s_application10/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application10/core/app_export.dart';
import 'controller/forgot_password_controller.dart';

// ignore_for_file: must_be_immutable
class ForgotPasswordScreen extends GetWidget<ForgotPasswordController> {
  ForgotPasswordScreen({Key? key}) : super(key: key);

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
                                left: 16.h, top: 83.v, right: 16.h),
                            child: Column(children: [
                              _buildPageTitle(),
                              SizedBox(height: 39.v),
                              CustomTextFormField(
                                  controller: controller.emailController,
                                  hintText: "lbl_email_id".tr,
                                  textInputAction: TextInputAction.done,
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
                              SizedBox(height: 40.v),
                              CustomElevatedButton(
                                  text: "lbl_log_in".tr,
                                  buttonStyle: CustomButtonStyles.fillPrimary,
                                  onPressed: () {
                                    onTapLogIn();
                                  }),
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
      Text("lbl_forgot_password".tr,
          style: CustomTextStyles.headlineLargePrimary),
      SizedBox(height: 5.v),
      Container(
          width: 352.h,
          margin: EdgeInsets.only(right: 29.h),
          child: Text("msg_please_enter_your2".tr,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodyLargePrimary.copyWith(height: 1.50)))
    ]);
  }

  /// Navigates to the notificationScreen when the action is triggered.
  onTapLogIn() {
    Get.toNamed(
      AppRoutes.notificationScreen,
    );
  }
}
