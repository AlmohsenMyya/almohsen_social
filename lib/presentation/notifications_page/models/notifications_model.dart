import '../../../core/app_export.dart';
import 'notificationslist_item_model.dart';

/// This class defines the variables used in the [notifications_page],
/// and is typically used to hold data that is passed between different parts of the application.
class NotificationsModel {
  Rx<List<NotificationslistItemModel>> notificationslistItemList = Rx([
    NotificationslistItemModel(
        image: ImageConstant.imgEllipse22.obs,
        kevinHasFollowed: "Kevin has followed you".obs,
        duration: "1 hour ago".obs),
    NotificationslistItemModel(
        image: ImageConstant.imgEllipse2254x52.obs,
        kevinHasFollowed:
            "Arman has commented on your story\n “hey there” to your timeline"
                .obs,
        duration: "2 hours ago".obs),
    NotificationslistItemModel(image: ImageConstant.imgEllipse221.obs),
    NotificationslistItemModel(
        image: ImageConstant.imgEllipse222.obs,
        kevinHasFollowed:
            "Arman has commented on your story\n “hey there” to your timeline"
                .obs,
        duration: "2 hours ago".obs),
    NotificationslistItemModel(
        image: ImageConstant.imgEllipse22.obs,
        kevinHasFollowed:
            "Arman has commented on your story\n “hey there” to your timeline"
                .obs,
        duration: "2 hours ago".obs)
  ]);
}
