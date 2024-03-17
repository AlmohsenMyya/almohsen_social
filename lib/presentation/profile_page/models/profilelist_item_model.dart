import '../../../core/app_export.dart';

/// This class is used in the [profilelist_item_widget] screen.
class ProfilelistItemModel {
  ProfilelistItemModel({
    this.rosalia,
    this.duration,
    this.mostPeopleNever,
    this.zipcode,
    this.eightHundred,
    this.id,
  }) {
    rosalia = rosalia ?? Rx("Rosalia");
    duration = duration ?? Rx("35 minutes ago");
    mostPeopleNever = mostPeopleNever ??
        Rx("Most people never appreciate what he does but instead they see the point of his fault for their own pleasure. ");
    zipcode = zipcode ?? Rx("2200");
    eightHundred = eightHundred ?? Rx("800");
    id = id ?? Rx("");
  }

  Rx<String>? rosalia;

  Rx<String>? duration;

  Rx<String>? mostPeopleNever;

  Rx<String>? zipcode;

  Rx<String>? eightHundred;

  Rx<String>? id;
}
