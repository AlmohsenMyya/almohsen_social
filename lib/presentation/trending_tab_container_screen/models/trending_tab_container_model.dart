import '../../../core/app_export.dart';
import 'stories_item_model.dart';

/// This class defines the variables used in the [trending_tab_container_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class TrendingTabContainerModel {
  Rx<List<StoriesItemModel>> storiesItemList = Rx([
    StoriesItemModel(roy: ImageConstant.imgEllipse15.obs, roy1: "Roy".obs),
    StoriesItemModel(roy: ImageConstant.imgEllipse22.obs, roy1: "Jordan".obs),
    StoriesItemModel(roy: ImageConstant.imgEllipse26.obs, roy1: "Chrystin".obs),
    StoriesItemModel(roy: ImageConstant.imgEllipse28.obs, roy1: "Vrindha".obs),
    StoriesItemModel(roy1: "Angeline".obs)
  ]);
}
