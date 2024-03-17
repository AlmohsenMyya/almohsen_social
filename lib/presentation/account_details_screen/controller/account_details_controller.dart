import '../../../core/app_export.dart';
import '../models/account_details_model.dart';

/// A controller class for the AccountDetailsScreen.
///
/// This class manages the state of the AccountDetailsScreen, including the
/// current accountDetailsModelObj
class AccountDetailsController extends GetxController {
  Rx<AccountDetailsModel> accountDetailsModelObj = AccountDetailsModel().obs;
}
