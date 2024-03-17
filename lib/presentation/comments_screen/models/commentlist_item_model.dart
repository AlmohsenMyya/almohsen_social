import '../../../core/app_export.dart';

/// This class is used in the [commentlist_item_widget] screen.
class CommentlistItemModel {
  CommentlistItemModel({
    this.rizalReynaldhi,
    this.duration,
    this.mostPeopleNever,
    this.reply,
    this.id,
  }) {
    rizalReynaldhi = rizalReynaldhi ?? Rx("Rizal Reynaldhi");
    duration = duration ?? Rx("35 minutes ago");
    mostPeopleNever = mostPeopleNever ??
        Rx("Most people never appreciate what he does but instead they see the point of his fault for their own pleasure. ");
    reply = reply ?? Rx("Reply");
    id = id ?? Rx("");
  }

  Rx<String>? rizalReynaldhi;

  Rx<String>? duration;

  Rx<String>? mostPeopleNever;

  Rx<String>? reply;

  Rx<String>? id;
}
