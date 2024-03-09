import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:mohamad_komaiha_infosysta_assignment/src/core/common/data/models/error_model/error_model.dart';
import 'package:mohamad_komaiha_infosysta_assignment/src/core/common/logic/pagination/paginated_list.dart';
import 'package:mohamad_komaiha_infosysta_assignment/src/core/utils/helpers/error_parser.dart';
import 'package:mohamad_komaiha_infosysta_assignment/src/features/assignment/data/data_source/assignment_data_source.dart';
import 'package:mohamad_komaiha_infosysta_assignment/src/features/assignment/data/models/post_model/post_model.dart';
import 'package:mohamad_komaiha_infosysta_assignment/src/features/assignment/domain/entities/post.dart';
import 'package:mohamad_komaiha_infosysta_assignment/src/features/assignment/domain/repositories/assignment_repository.dart';
import 'package:mohamad_komaiha_infosysta_assignment/src/features/assignment/domain/use_cases/get_posts_use_case.dart';


class AssignmentRepositoryImpl extends AssignmentRepository{

  AssignmentDataSource dataSource;

  AssignmentRepositoryImpl({
    required this.dataSource,
});


  @override
  Future<Either<ErrorModel, PaginatedList<Post>>> getPosts({
    required GetPostsParams params
  }) async{
    try{
      var res=  await  dataSource.getPosts(params.value);
      List<Post> posts =(res).map((e)=>PostModel.fromJson(e).toEntity()).toList();

      return right(
          PaginatedList(data: posts)
      );
    } on DioError catch (error, stackTrace) {
      return Left(errorParse(error, stackTrace));
    }
    catch(e) {
      return left(ErrorModel(error: Error(), message: 'Unknown Error'));
    }
  }


}