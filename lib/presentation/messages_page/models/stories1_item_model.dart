import '../../../core/app_export.dart';

/// This class is used in the [stories1_item_widget] screen.
class Stories1ItemModel {
  Stories1ItemModel({
    this.roy,
    this.roy1,
    this.id,
  }) {
    roy = roy ?? Rx(ImageConstant.imgEllipse15);
    roy1 = roy1 ?? Rx("Roy");
    id = id ?? Rx("");
  }

  Rx<String>? roy;

  Rx<String>? roy1;

  Rx<String>? id;
}
