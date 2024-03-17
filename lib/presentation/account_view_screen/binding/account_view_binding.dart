import 'package:almohsen_s_application10/presentation/account_view_screen/controller/account_view_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AccountViewScreen.
///
/// This class ensures that the AccountViewController is created when the
/// AccountViewScreen is first loaded.
class AccountViewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AccountViewController());
  }
}
