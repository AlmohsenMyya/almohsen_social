import 'widgets/trendinglist_item_widget.dart';
import 'models/trendinglist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application10/core/app_export.dart';
import 'controller/trending_controller.dart';
import 'models/trending_model.dart';

class TrendingPage extends StatelessWidget {
  TrendingPage({Key? key})
      : super(
          key: key,
        );

  TrendingController controller =
      Get.put(TrendingController(TrendingModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillPrimary,
          child: Column(
            children: [
              SizedBox(height: 23.v),
              _buildTrendingList(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTrendingList() {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.h),
        child: Obx(
          () => ListView.separated(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 24.v,
              );
            },
            itemCount: controller
                .trendingModelObj.value.trendinglistItemList.value.length,
            itemBuilder: (context, index) {
              TrendinglistItemModel model = controller
                  .trendingModelObj.value.trendinglistItemList.value[index];
              return TrendinglistItemWidget(
                model,
              );
            },
          ),
        ),
      ),
    );
  }
}
