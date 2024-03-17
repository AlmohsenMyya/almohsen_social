import '../../../core/app_export.dart';
import 'stories1_item_model.dart';
import 'messageslist_item_model.dart';

/// This class defines the variables used in the [messages_page],
/// and is typically used to hold data that is passed between different parts of the application.
class MessagesModel {
  Rx<List<Stories1ItemModel>> stories1ItemList = Rx([
    Stories1ItemModel(roy: ImageConstant.imgEllipse15.obs, roy1: "Roy".obs),
    Stories1ItemModel(roy: ImageConstant.imgEllipse22.obs, roy1: "Jordan".obs),
    Stories1ItemModel(
        roy: ImageConstant.imgEllipse24.obs, roy1: "Angeline".obs),
    Stories1ItemModel(
        roy: ImageConstant.imgEllipse26.obs, roy1: "Chrystin".obs),
    Stories1ItemModel(roy: ImageConstant.imgEllipse28.obs, roy1: "Vrindha".obs),
    Stories1ItemModel(roy: ImageConstant.imgEllipse24.obs, roy1: "Vrindha".obs)
  ]);

  Rx<List<MessageslistItemModel>> messageslistItemList = Rx([
    MessageslistItemModel(
        richardAlves: "Richard Alves".obs,
        heyBroWhereAre: "Hey bro, where are you?".obs,
        time: "10:00 AM".obs),
    MessageslistItemModel(
        richardAlves: "Richard Alves".obs,
        heyBroWhereAre: "Hey bro, where are you?".obs,
        time: "10:00 AM".obs),
    MessageslistItemModel(
        richardAlves: "Richard Alves".obs,
        heyBroWhereAre: "Hey bro, where are you?".obs,
        time: "10:00 AM".obs),
    MessageslistItemModel(
        richardAlves: "Richard Alves".obs,
        heyBroWhereAre: "Hey bro, where are you?".obs,
        time: "10:00 AM".obs),
    MessageslistItemModel(
        richardAlves: "Richard Alves".obs,
        heyBroWhereAre: "Hey bro, where are you?".obs,
        time: "10:00 AM".obs)
  ]);
}
