import 'package:almohsen_s_application10/presentation/daily_new_tab_container_screen/controller/daily_new_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the DailyNewTabContainerScreen.
///
/// This class ensures that the DailyNewTabContainerController is created when the
/// DailyNewTabContainerScreen is first loaded.
class DailyNewTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DailyNewTabContainerController());
  }
}
