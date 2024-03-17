import 'package:almohsen_s_application10/presentation/stories_and_tweets_screen/controller/stories_and_tweets_controller.dart';
import 'package:get/get.dart';

/// A binding class for the StoriesAndTweetsScreen.
///
/// This class ensures that the StoriesAndTweetsController is created when the
/// StoriesAndTweetsScreen is first loaded.
class StoriesAndTweetsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => StoriesAndTweetsController());
  }
}
