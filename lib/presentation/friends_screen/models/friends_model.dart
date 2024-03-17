import '../../../core/app_export.dart';
import 'ninetysevenlist_item_model.dart';
import 'follow_item_model.dart';

/// This class defines the variables used in the [friends_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class FriendsModel {
  Rx<List<NinetysevenlistItemModel>> ninetysevenlistItemList = Rx([
    NinetysevenlistItemModel(trash: ImageConstant.imgTrashBlue500.obs),
    NinetysevenlistItemModel(trash: ImageConstant.imgFacebookBlueA400.obs),
    NinetysevenlistItemModel(trash: ImageConstant.imgThumbsUp.obs)
  ]);

  Rx<List<FollowItemModel>> followItemList = Rx([
    FollowItemModel(
        kevinAllsrub: ImageConstant.imgEllipse5.obs,
        kevinAllsrub1: "Kevin Allsrub".obs,
        yourEFriendsOn: "Your’e friends on twitter".obs),
    FollowItemModel(
        kevinAllsrub: ImageConstant.imgEllipse6.obs,
        kevinAllsrub1: "Sarah Owen".obs,
        yourEFriendsOn: "Your’e friends on twitter".obs),
    FollowItemModel(
        kevinAllsrub: ImageConstant.imgEllipse7.obs,
        kevinAllsrub1: "Rick Onad".obs,
        yourEFriendsOn: "Your’e friends on twitter".obs),
    FollowItemModel(
        kevinAllsrub: ImageConstant.imgEllipse8.obs,
        kevinAllsrub1: "Steven Ford".obs,
        yourEFriendsOn: "Your’e friends on twitter".obs),
    FollowItemModel(
        kevinAllsrub: ImageConstant.imgEllipse9.obs,
        kevinAllsrub1: "Lucas Anna ".obs,
        yourEFriendsOn: "Your’e friends on twitter".obs),
    FollowItemModel(
        kevinAllsrub: ImageConstant.imgEllipse10.obs,
        kevinAllsrub1: "Nabila Remaar".obs,
        yourEFriendsOn: "Your’e friends on twitter".obs),
    FollowItemModel(
        kevinAllsrub: ImageConstant.imgEllipse11.obs,
        kevinAllsrub1: "Rosalia".obs,
        yourEFriendsOn: "Your’e friends on twitter".obs)
  ]);
}
