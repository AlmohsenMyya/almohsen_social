import '../../../core/app_export.dart';

/// This class defines the variables used in the [sign_up_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SignUpModel {
  Rx<List<String>> radioList = Rx(["lbl_female", "lbl_male"]);
}
