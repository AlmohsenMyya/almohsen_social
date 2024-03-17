import '../../../core/app_export.dart';
import 'profileslist_item_model.dart';

/// This class defines the variables used in the [discover_page],
/// and is typically used to hold data that is passed between different parts of the application.
class DiscoverModel {
  Rx<List<ProfileslistItemModel>> profileslistItemList = Rx([
    ProfileslistItemModel(
        nineteen: ImageConstant.img19.obs, agnessMonica: "Agness Monica".obs),
    ProfileslistItemModel(nineteen: ImageConstant.img19179x147.obs),
    ProfileslistItemModel(
        nineteen: ImageConstant.img191.obs, agnessMonica: "Windy Wandah".obs)
  ]);
}
