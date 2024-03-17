import 'package:almohsen_s_application10/presentation/friends_screen/controller/friends_controller.dart';
import 'package:get/get.dart';

/// A binding class for the FriendsScreen.
///
/// This class ensures that the FriendsController is created when the
/// FriendsScreen is first loaded.
class FriendsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FriendsController());
  }
}
