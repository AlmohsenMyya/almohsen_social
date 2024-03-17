import '../../../core/app_export.dart';
import '../models/daily_new_model.dart';

/// A controller class for the DailyNewPage.
///
/// This class manages the state of the DailyNewPage, including the
/// current dailyNewModelObj
class DailyNewController extends GetxController {
  DailyNewController(this.dailyNewModelObj);

  Rx<DailyNewModel> dailyNewModelObj;
}
