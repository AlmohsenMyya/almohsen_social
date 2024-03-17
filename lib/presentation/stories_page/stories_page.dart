import 'package:almohsen_s_application10/widgets/app_bar/custom_app_bar.dart';
import 'package:almohsen_s_application10/widgets/app_bar/appbar_title_searchview.dart';
import 'package:almohsen_s_application10/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'widgets/storieslist_item_widget.dart';
import 'models/storieslist_item_model.dart';
import 'widgets/eventslist_item_widget.dart';
import 'models/eventslist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application10/core/app_export.dart';
import 'controller/stories_controller.dart';
import 'models/stories_model.dart';

class StoriesPage extends StatelessWidget {
  StoriesPage({Key? key})
      : super(
          key: key,
        );

  StoriesController controller = Get.put(StoriesController(StoriesModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 26.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 16.h),
                child: Text(
                  "lbl_stories".tr,
                  style: theme.textTheme.headlineSmall,
                ),
              ),
              SizedBox(height: 20.v),
              _buildStoriesList(),
              SizedBox(height: 21.v),
              _buildPost(),
              SizedBox(height: 27.v),
              Padding(
                padding: EdgeInsets.only(left: 16.h),
                child: Text(
                  "lbl_events".tr,
                  style: theme.textTheme.headlineSmall,
                ),
              ),
              SizedBox(height: 16.v),
              _buildEventsList(),
            ],
          ),
        ),
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
          imagePath: ImageConstant.imgAdd,
          margin: EdgeInsets.fromLTRB(16.h, 5.v, 19.h, 5.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildStoriesList() {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        height: 89.v,
        child: Obx(
          () => ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 15.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 16.h,
              );
            },
            itemCount: controller
                .storiesModelObj.value.storieslistItemList.value.length,
            itemBuilder: (context, index) {
              StorieslistItemModel model = controller
                  .storiesModelObj.value.storieslistItemList.value[index];
              return StorieslistItemWidget(
                model,
              );
            },
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPost() {
    return Align(
      alignment: Alignment.center,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 15.h),
        padding: EdgeInsets.symmetric(
          horizontal: 16.h,
          vertical: 22.v,
        ),
        decoration: AppDecoration.outlineBlack.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder15,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse21,
                  height: 50.adaptSize,
                  width: 50.adaptSize,
                  radius: BorderRadius.circular(
                    25.h,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    top: 9.v,
                    bottom: 3.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_rizal_reynaldhi".tr,
                        style: CustomTextStyles.titleMedium18,
                      ),
                      SizedBox(height: 2.v),
                      Text(
                        "lbl_35_minutes_ago".tr,
                        style: CustomTextStyles.labelMediumBluegray100,
                      ),
                    ],
                  ),
                ),
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgGrid,
                  height: 6.v,
                  width: 30.h,
                  margin: EdgeInsets.symmetric(vertical: 22.v),
                ),
              ],
            ),
            SizedBox(height: 18.v),
            Container(
              width: 332.h,
              margin: EdgeInsets.only(right: 17.h),
              child: Text(
                "msg_most_people_never".tr,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.bodyLargePrimary.copyWith(
                  height: 1.50,
                ),
              ),
            ),
            SizedBox(height: 14.v),
            Padding(
              padding: EdgeInsets.only(right: 5.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgFavorite,
                    height: 17.v,
                    width: 19.h,
                    margin: EdgeInsets.only(
                      top: 5.v,
                      bottom: 3.v,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 8.h,
                      top: 6.v,
                      bottom: 3.v,
                    ),
                    child: Text(
                      "lbl_2200".tr,
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgUser,
                    height: 18.v,
                    width: 19.h,
                    margin: EdgeInsets.only(
                      left: 29.h,
                      top: 4.v,
                      bottom: 3.v,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 8.h,
                      top: 7.v,
                      bottom: 2.v,
                    ),
                    child: Text(
                      "lbl_800".tr,
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                  Spacer(),
                  CustomImageView(
                    imagePath: ImageConstant.imgSettingsPrimary,
                    height: 25.v,
                    width: 54.h,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEventsList() {
    return Padding(
      padding: EdgeInsets.only(left: 16.h),
      child: Obx(
        () => ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 1.v,
            );
          },
          itemCount:
              controller.storiesModelObj.value.eventslistItemList.value.length,
          itemBuilder: (context, index) {
            EventslistItemModel model = controller
                .storiesModelObj.value.eventslistItemList.value[index];
            return EventslistItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }
}
