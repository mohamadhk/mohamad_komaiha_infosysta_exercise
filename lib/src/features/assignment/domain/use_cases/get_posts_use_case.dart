
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:mohamad_komaiha_infosysta_assignment/src/core/common/data/models/error_model/error_model.dart';
import 'package:mohamad_komaiha_infosysta_assignment/src/core/common/logic/pagination/paginated_list.dart';
import 'package:mohamad_komaiha_infosysta_assignment/src/features/assignment/domain/entities/post.dart';
import 'package:mohamad_komaiha_infosysta_assignment/src/features/assignment/domain/repositories/assignment_repository.dart';

class GetPostsUseCase{


  final AssignmentRepository repository;

  GetPostsUseCase({required this.repository});


  @override
  Future<Either<ErrorModel, PaginatedList<Post>>> call(GetPostsParams params) {
    return repository.getPosts(params: params);
  }

}

class GetPostsParams extends Equatable {
  late final Map<String, dynamic> value;

  GetPostsParams({
    required int page,
    required int limit,

  }) {
    value = {
      '_page':page,
      '_limit':limit,
    };
    value.removeWhere((key, value) => value == null);
  }

  @override
  List<Object> get props => [value];
}
