import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mohamad_komaiha_infosysta_assignment/src/features/assignment/domain/entities/post.dart';

part 'post_model.g.dart';

@JsonSerializable()
class PostModel {
  int? id;
  int? userId;
  String? title;
  String? body;
  PostModel({
    this.id,
    this.userId,
    this.body,
    this.title
  });
  factory PostModel.fromJson(Map<String, dynamic> json) =>
      _$PostModelFromJson(json);

  Map<String, dynamic> toJson() => _$PostModelToJson(this);
}

extension MapToDomain on PostModel {
  Post toEntity() {
    return Post(
      id:id,
      userId: userId,
      body: body,
      title: title

    );
  }
}
