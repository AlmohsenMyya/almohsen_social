import '../../../core/app_export.dart';

/// This class is used in the [messageslist_item_widget] screen.
class MessageslistItemModel {
  MessageslistItemModel({
    this.richardAlves,
    this.heyBroWhereAre,
    this.time,
    this.id,
  }) {
    richardAlves = richardAlves ?? Rx("Richard Alves");
    heyBroWhereAre = heyBroWhereAre ?? Rx("Hey bro, where are you?");
    time = time ?? Rx("10:00 AM");
    id = id ?? Rx("");
  }

  Rx<String>? richardAlves;

  Rx<String>? heyBroWhereAre;

  Rx<String>? time;

  Rx<String>? id;
}
