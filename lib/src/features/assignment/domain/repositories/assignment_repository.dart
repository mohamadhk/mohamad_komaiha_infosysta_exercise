import 'package:dartz/dartz.dart';
import 'package:mohamad_komaiha_infosysta_assignment/src/core/common/data/models/error_model/error_model.dart';
import 'package:mohamad_komaiha_infosysta_assignment/src/core/common/logic/pagination/paginated_list.dart';
import 'package:mohamad_komaiha_infosysta_assignment/src/features/assignment/domain/entities/post.dart';
import 'package:mohamad_komaiha_infosysta_assignment/src/features/assignment/domain/use_cases/get_posts_use_case.dart';

abstract class AssignmentRepository{


  Future<Either<ErrorModel, PaginatedList<Post>>> getPosts({
    required GetPostsParams params
  });
}