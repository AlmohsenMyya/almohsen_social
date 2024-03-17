import '../../../core/app_export.dart';

/// This class is used in the [trendinglist_item_widget] screen.
class TrendinglistItemModel {
  TrendinglistItemModel({
    this.image,
    this.rickOnad,
    this.time,
    this.thisIsTheMoment,
    this.huge,
    this.fotography,
    this.nature,
    this.id,
  }) {
    image = image ?? Rx(ImageConstant.img40221x382);
    rickOnad = rickOnad ?? Rx("Rick Onad");
    time = time ?? Rx("40 min ago");
    thisIsTheMoment = thisIsTheMoment ??
        Rx("This is the moment where i take a photo of a couple hugging in a beautiful rice field.");
    huge = huge ?? Rx("#huge");
    fotography = fotography ?? Rx("#fotography");
    nature = nature ?? Rx("#nature");
    id = id ?? Rx("");
  }

  Rx<String>? image;

  Rx<String>? rickOnad;

  Rx<String>? time;

  Rx<String>? thisIsTheMoment;

  Rx<String>? huge;

  Rx<String>? fotography;

  Rx<String>? nature;

  Rx<String>? id;
}
