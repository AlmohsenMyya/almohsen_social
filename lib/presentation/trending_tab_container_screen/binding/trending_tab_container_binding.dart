import 'package:almohsen_s_application10/presentation/trending_tab_container_screen/controller/trending_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TrendingTabContainerScreen.
///
/// This class ensures that the TrendingTabContainerController is created when the
/// TrendingTabContainerScreen is first loaded.
class TrendingTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TrendingTabContainerController());
  }
}
