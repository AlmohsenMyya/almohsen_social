import '../../../core/app_export.dart';
import 'storieslist_item_model.dart';
import 'eventslist_item_model.dart';

/// This class defines the variables used in the [stories_page],
/// and is typically used to hold data that is passed between different parts of the application.
class StoriesModel {
  Rx<List<StorieslistItemModel>> storieslistItemList = Rx([
    StorieslistItemModel(roy: ImageConstant.imgEllipse15.obs, roy1: "Roy".obs),
    StorieslistItemModel(
        roy: ImageConstant.imgEllipse22.obs, roy1: "Jordan".obs),
    StorieslistItemModel(
        roy: ImageConstant.imgEllipse26.obs, roy1: "Chrystin".obs),
    StorieslistItemModel(
        roy: ImageConstant.imgEllipse28.obs, roy1: "Vrindha".obs),
    StorieslistItemModel(roy1: "Angeline".obs)
  ]);

  Rx<List<EventslistItemModel>> eventslistItemList = Rx([
    EventslistItemModel(
        lIVEWeTheFest: ImageConstant.img19144x147.obs,
        blueLoyalParty: ImageConstant.img192.obs,
        lIVEWeTheFest1: "LIVE - We The Fest".obs,
        price: "19 : 00 | Forg Stadium".obs,
        blueLoyalParty1: "Blue Loyal Party".obs,
        price1: "19 : 35 | Latuna Beach".obs)
  ]);
}
