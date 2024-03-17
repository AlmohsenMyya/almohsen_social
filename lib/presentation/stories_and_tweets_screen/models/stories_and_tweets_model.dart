import '../../../core/app_export.dart';
import 'livestories_item_model.dart';
import 'frame_item_model.dart';

/// This class defines the variables used in the [stories_and_tweets_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class StoriesAndTweetsModel {
  Rx<List<LivestoriesItemModel>> livestoriesItemList = Rx([
    LivestoriesItemModel(
        save: ImageConstant.imgSave.obs, newPost: "New Post".obs),
    LivestoriesItemModel(newPost: "Jordan".obs),
    LivestoriesItemModel(newPost: "Angeline".obs),
    LivestoriesItemModel(newPost: "Chrystin".obs),
    LivestoriesItemModel(newPost: "Vrindha".obs)
  ]);

  Rx<List<FrameItemModel>> frameItemList = Rx([
    FrameItemModel(
        albertOConnor: "Albert O’connor".obs,
        duration: "4  hours ago".obs,
        introduceIAmA:
            "Introduce I am a photographer who travels around the world everyday, these are some of my works as a photographer."
                .obs,
        zipcode: "2200".obs,
        eightHundred: "800".obs,
        albertOConnor1: "Albert O’connor".obs,
        duration1: "4  hours ago".obs,
        introduceIAmA1:
            "Introduce I am a photographer who travels around the world everyday, these are some of my works as a photographer."
                .obs)
  ]);
}
