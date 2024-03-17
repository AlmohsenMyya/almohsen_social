import '../../../core/app_export.dart';
import '../models/chat_model.dart';

/// A controller class for the ChatScreen.
///
/// This class manages the state of the ChatScreen, including the
/// current chatModelObj
class ChatController extends GetxController {
  Rx<ChatModel> chatModelObj = ChatModel().obs;
}
