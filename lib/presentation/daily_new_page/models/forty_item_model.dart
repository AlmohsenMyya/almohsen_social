import '../../../core/app_export.dart';

/// This class is used in the [forty_item_widget] screen.
class FortyItemModel {
  FortyItemModel({
    this.forty,
    this.id,
  }) {
    forty = forty ?? Rx(ImageConstant.img40);
    id = id ?? Rx("");
  }

  Rx<String>? forty;

  Rx<String>? id;
}
