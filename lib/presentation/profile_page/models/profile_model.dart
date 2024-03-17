import '../../../core/app_export.dart';
import 'profilelist_item_model.dart';

/// This class defines the variables used in the [profile_page],
/// and is typically used to hold data that is passed between different parts of the application.
class ProfileModel {
  Rx<List<ProfilelistItemModel>> profilelistItemList = Rx([
    ProfilelistItemModel(
        rosalia: "Rosalia".obs,
        duration: "35 minutes ago".obs,
        mostPeopleNever:
            "Most people never appreciate what he does but instead they see the point of his fault for their own pleasure. "
                .obs,
        zipcode: "2200".obs,
        eightHundred: "800".obs),
    ProfilelistItemModel(
        rosalia: "Rosalia".obs,
        duration: "35 minutes ago".obs,
        mostPeopleNever:
            "Most people never appreciate what he does but instead they see the point of his fault for their own pleasure. "
                .obs,
        zipcode: "2200".obs,
        eightHundred: "800".obs)
  ]);
}
