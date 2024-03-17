import '../../../core/app_export.dart';
import 'fortysix_item_model.dart';
import 'widget_item_model.dart';

/// This class defines the variables used in the [account_details_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class AccountDetailsModel {
  Rx<List<FortysixItemModel>> fortysixItemList = Rx([
    FortysixItemModel(fortySix: ImageConstant.img46.obs),
    FortysixItemModel(fortySix: ImageConstant.img47.obs),
    FortysixItemModel(fortySix: ImageConstant.img48.obs)
  ]);

  Rx<List<WidgetItemModel>> widgetItemList = Rx([
    WidgetItemModel(image: ImageConstant.imgEllipse15.obs),
    WidgetItemModel(image: ImageConstant.imgEllipse22.obs),
    WidgetItemModel(image: ImageConstant.imgEllipse24.obs),
    WidgetItemModel(image: ImageConstant.imgEllipse26.obs),
    WidgetItemModel(image: ImageConstant.imgEllipse28.obs)
  ]);
}
