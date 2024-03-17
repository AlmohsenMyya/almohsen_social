import '../../../core/app_export.dart';

/// This class is used in the [recentsearches_item_widget] screen.
class RecentsearchesItemModel {
  RecentsearchesItemModel({
    this.kevinAllsrub,
    this.kevinAllsrub1,
    this.yourEFriendsOn,
    this.id,
  }) {
    kevinAllsrub = kevinAllsrub ?? Rx(ImageConstant.imgEllipse5);
    kevinAllsrub1 = kevinAllsrub1 ?? Rx("Kevin Allsrub");
    yourEFriendsOn = yourEFriendsOn ?? Rx("Your’e friends on twitter");
    id = id ?? Rx("");
  }

  Rx<String>? kevinAllsrub;

  Rx<String>? kevinAllsrub1;

  Rx<String>? yourEFriendsOn;

  Rx<String>? id;
}
