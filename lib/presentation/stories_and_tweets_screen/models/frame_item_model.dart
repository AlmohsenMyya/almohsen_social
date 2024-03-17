import '../../../core/app_export.dart';

/// This class is used in the [frame_item_widget] screen.
class FrameItemModel {
  FrameItemModel({
    this.albertOConnor,
    this.duration,
    this.introduceIAmA,
    this.zipcode,
    this.eightHundred,
    this.albertOConnor1,
    this.duration1,
    this.introduceIAmA1,
    this.id,
  }) {
    albertOConnor = albertOConnor ?? Rx("Albert O’connor");
    duration = duration ?? Rx("4  hours ago");
    introduceIAmA = introduceIAmA ??
        Rx("Introduce I am a photographer who travels around the world everyday, these are some of my works as a photographer.");
    zipcode = zipcode ?? Rx("2200");
    eightHundred = eightHundred ?? Rx("800");
    albertOConnor1 = albertOConnor1 ?? Rx("Albert O’connor");
    duration1 = duration1 ?? Rx("4  hours ago");
    introduceIAmA1 = introduceIAmA1 ??
        Rx("Introduce I am a photographer who travels around the world everyday, these are some of my works as a photographer.");
    id = id ?? Rx("");
  }

  Rx<String>? albertOConnor;

  Rx<String>? duration;

  Rx<String>? introduceIAmA;

  Rx<String>? zipcode;

  Rx<String>? eightHundred;

  Rx<String>? albertOConnor1;

  Rx<String>? duration1;

  Rx<String>? introduceIAmA1;

  Rx<String>? id;
}
