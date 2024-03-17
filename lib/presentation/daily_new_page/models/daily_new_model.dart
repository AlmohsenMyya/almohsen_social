import '../../../core/app_export.dart';
import 'profileslist1_item_model.dart';
import 'forty_item_model.dart';

/// This class defines the variables used in the [daily_new_page],
/// and is typically used to hold data that is passed between different parts of the application.
class DailyNewModel {
  Rx<List<Profileslist1ItemModel>> profileslist1ItemList = Rx([
    Profileslist1ItemModel(
        nineteen: ImageConstant.img19.obs, agnessMonica: "Agness Monica".obs),
    Profileslist1ItemModel(nineteen: ImageConstant.img19179x147.obs),
    Profileslist1ItemModel(
        nineteen: ImageConstant.img191.obs, agnessMonica: "Windy Wandah".obs)
  ]);

  Rx<List<FortyItemModel>> fortyItemList = Rx([
    FortyItemModel(forty: ImageConstant.img40.obs),
    FortyItemModel(forty: ImageConstant.img34.obs)
  ]);
}
