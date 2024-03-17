import 'package:almohsen_s_application10/presentation/invite_friends_screen/controller/invite_friends_controller.dart';
import 'package:get/get.dart';

/// A binding class for the InviteFriendsScreen.
///
/// This class ensures that the InviteFriendsController is created when the
/// InviteFriendsScreen is first loaded.
class InviteFriendsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => InviteFriendsController());
  }
}
