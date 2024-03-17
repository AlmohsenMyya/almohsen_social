import 'package:almohsen_s_application10/presentation/page_view_screen/controller/page_view_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PageViewScreen.
///
/// This class ensures that the PageViewController is created when the
/// PageViewScreen is first loaded.
class PageViewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PageViewController());
  }
}
