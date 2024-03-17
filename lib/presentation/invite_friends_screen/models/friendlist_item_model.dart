import '../../../core/app_export.dart';

/// This class is used in the [friendlist_item_widget] screen.
class FriendlistItemModel {
  FriendlistItemModel({
    this.kevinAllsrub,
    this.kevinAllsrub1,
    this.yourEFriendsOn,
    this.checkmark,
    this.id,
  }) {
    kevinAllsrub = kevinAllsrub ?? Rx(ImageConstant.imgEllipse5);
    kevinAllsrub1 = kevinAllsrub1 ?? Rx("Kevin Allsrub");
    yourEFriendsOn = yourEFriendsOn ?? Rx("Your’e friends on twitter");
    checkmark = checkmark ?? Rx(ImageConstant.imgCheckmark);
    id = id ?? Rx("");
  }

  Rx<String>? kevinAllsrub;

  Rx<String>? kevinAllsrub1;

  Rx<String>? yourEFriendsOn;

  Rx<String>? checkmark;

  Rx<String>? id;
}
