import 'package:almohsen_s_application10/presentation/detailed_profile_screen/controller/detailed_profile_controller.dart';
import 'package:get/get.dart';

/// A binding class for the DetailedProfileScreen.
///
/// This class ensures that the DetailedProfileController is created when the
/// DetailedProfileScreen is first loaded.
class DetailedProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DetailedProfileController());
  }
}
