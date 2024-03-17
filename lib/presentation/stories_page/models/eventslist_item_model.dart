import '../../../core/app_export.dart';

/// This class is used in the [eventslist_item_widget] screen.
class EventslistItemModel {
  EventslistItemModel({
    this.lIVEWeTheFest,
    this.blueLoyalParty,
    this.lIVEWeTheFest1,
    this.price,
    this.blueLoyalParty1,
    this.price1,
    this.id,
  }) {
    lIVEWeTheFest = lIVEWeTheFest ?? Rx(ImageConstant.img19144x147);
    blueLoyalParty = blueLoyalParty ?? Rx(ImageConstant.img192);
    lIVEWeTheFest1 = lIVEWeTheFest1 ?? Rx("LIVE - We The Fest");
    price = price ?? Rx("19 : 00 | Forg Stadium");
    blueLoyalParty1 = blueLoyalParty1 ?? Rx("Blue Loyal Party");
    price1 = price1 ?? Rx("19 : 35 | Latuna Beach");
    id = id ?? Rx("");
  }

  Rx<String>? lIVEWeTheFest;

  Rx<String>? blueLoyalParty;

  Rx<String>? lIVEWeTheFest1;

  Rx<String>? price;

  Rx<String>? blueLoyalParty1;

  Rx<String>? price1;

  Rx<String>? id;
}
