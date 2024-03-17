import 'package:almohsen_s_application10/presentation/stories_container_screen/controller/stories_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the StoriesContainerScreen.
///
/// This class ensures that the StoriesContainerController is created when the
/// StoriesContainerScreen is first loaded.
class StoriesContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => StoriesContainerController());
  }
}
