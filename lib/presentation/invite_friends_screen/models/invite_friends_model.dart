import '../../../core/app_export.dart';
import 'friendlist_item_model.dart';

/// This class defines the variables used in the [invite_friends_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class InviteFriendsModel {
  Rx<List<FriendlistItemModel>> friendlistItemList = Rx([
    FriendlistItemModel(
        kevinAllsrub: ImageConstant.imgEllipse5.obs,
        kevinAllsrub1: "Kevin Allsrub".obs,
        yourEFriendsOn: "Your’e friends on twitter".obs,
        checkmark: ImageConstant.imgCheckmark.obs),
    FriendlistItemModel(
        kevinAllsrub: ImageConstant.imgEllipse6.obs,
        kevinAllsrub1: "Sarah Owen".obs,
        yourEFriendsOn: "Your’e friends on twitter".obs),
    FriendlistItemModel(
        kevinAllsrub: ImageConstant.imgEllipse7.obs,
        kevinAllsrub1: "Rick Onad".obs,
        yourEFriendsOn: "Your’e friends on twitter".obs),
    FriendlistItemModel(
        kevinAllsrub: ImageConstant.imgEllipse8.obs,
        kevinAllsrub1: "Steven Ford".obs,
        yourEFriendsOn: "Your’e friends on twitter".obs,
        checkmark: ImageConstant.imgCheckmark.obs),
    FriendlistItemModel(
        kevinAllsrub: ImageConstant.imgEllipse9.obs,
        kevinAllsrub1: "Lucas Anna ".obs,
        yourEFriendsOn: "Your’e friends on twitter".obs,
        checkmark: ImageConstant.imgCheckmark.obs),
    FriendlistItemModel(
        kevinAllsrub: ImageConstant.imgEllipse10.obs,
        kevinAllsrub1: "Nabila Remaar".obs,
        yourEFriendsOn: "Your’e friends on twitter".obs,
        checkmark: ImageConstant.imgCheckmark.obs),
    FriendlistItemModel(
        kevinAllsrub: ImageConstant.imgEllipse11.obs,
        kevinAllsrub1: "Rosalia".obs,
        yourEFriendsOn: "Your’e friends on twitter".obs),
    FriendlistItemModel(
        kevinAllsrub: ImageConstant.imgEllipse12.obs,
        kevinAllsrub1: "Albert O’connor".obs,
        yourEFriendsOn: "Your’e friends on twitter".obs),
    FriendlistItemModel(
        kevinAllsrub: ImageConstant.imgEllipse13.obs,
        kevinAllsrub1: "Melvin Klein".obs,
        yourEFriendsOn: "Your’e friends on twitter".obs,
        checkmark: ImageConstant.imgCheckmark.obs)
  ]);
}
