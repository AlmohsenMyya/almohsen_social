import 'package:almohsen_s_application10/presentation/live_screen/controller/live_controller.dart';
import 'package:get/get.dart';

/// A binding class for the LiveScreen.
///
/// This class ensures that the LiveController is created when the
/// LiveScreen is first loaded.
class LiveBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LiveController());
  }
}
