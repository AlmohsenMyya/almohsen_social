import '../../../core/app_export.dart';
import 'commentlist_item_model.dart';

/// This class defines the variables used in the [comments_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CommentsModel {
  Rx<List<CommentlistItemModel>> commentlistItemList = Rx([
    CommentlistItemModel(
        rizalReynaldhi: "Rizal Reynaldhi".obs,
        duration: "35 minutes ago".obs,
        mostPeopleNever:
            "Most people never appreciate what he does but instead they see the point of his fault for their own pleasure. "
                .obs,
        reply: "Reply".obs),
    CommentlistItemModel(
        rizalReynaldhi: "Rizal Reynaldhi".obs,
        duration: "35 minutes ago".obs,
        mostPeopleNever:
            "Most people never appreciate what he does but instead they see the point of his fault for their own pleasure. "
                .obs,
        reply: "Reply".obs),
    CommentlistItemModel(
        rizalReynaldhi: "Rizal Reynaldhi".obs,
        duration: "35 minutes ago".obs,
        mostPeopleNever:
            "Most people never appreciate what he does but instead they see the point of his fault for their own pleasure. "
                .obs,
        reply: "Reply".obs)
  ]);
}
