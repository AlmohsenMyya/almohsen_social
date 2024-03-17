import '../../../core/app_export.dart';
import '../models/discover_model.dart';

/// A controller class for the DiscoverPage.
///
/// This class manages the state of the DiscoverPage, including the
/// current discoverModelObj
class DiscoverController extends GetxController {
  DiscoverController(this.discoverModelObj);

  Rx<DiscoverModel> discoverModelObj;
}
