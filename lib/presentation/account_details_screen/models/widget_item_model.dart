import '../../../core/app_export.dart';

/// This class is used in the [widget_item_widget] screen.
class WidgetItemModel {
  WidgetItemModel({
    this.image,
    this.id,
  }) {
    image = image ?? Rx(ImageConstant.imgEllipse15);
    id = id ?? Rx("");
  }

  Rx<String>? image;

  Rx<String>? id;
}
