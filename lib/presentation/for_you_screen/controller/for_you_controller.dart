import '../../../core/app_export.dart';
import '../models/for_you_model.dart';

/// A controller class for the ForYouScreen.
///
/// This class manages the state of the ForYouScreen, including the
/// current forYouModelObj
class ForYouController extends GetxController {
  Rx<ForYouModel> forYouModelObj = ForYouModel().obs;
}
