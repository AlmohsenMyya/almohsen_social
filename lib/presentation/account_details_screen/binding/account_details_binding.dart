import 'package:almohsen_s_application10/presentation/account_details_screen/controller/account_details_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AccountDetailsScreen.
///
/// This class ensures that the AccountDetailsController is created when the
/// AccountDetailsScreen is first loaded.
class AccountDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AccountDetailsController());
  }
}
