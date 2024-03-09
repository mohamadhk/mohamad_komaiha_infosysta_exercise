import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mohamad_komaiha_infosysta_assignment/src/core/common/logic/pagination/base_pagination_state/base_pagination_state.dart';
import 'package:mohamad_komaiha_infosysta_assignment/src/core/utils/helpers/debouncer.dart';
import 'package:mohamad_komaiha_infosysta_assignment/src/features/assignment/domain/entities/post.dart';
import 'package:mohamad_komaiha_infosysta_assignment/src/features/assignment/domain/use_cases/get_posts_use_case.dart';

class GetPostsCubit extends Cubit<BasePaginationState> {
  GetPostsUseCase getPostsUseCase;
  List<Post> items = [];
  bool isLoading = false;
  int page = 1;
  int limit = 10;
  bool allDataFetched = false;

  final Debouncer _debouncer = Debouncer(delay: const Duration(milliseconds: 200));

  GetPostsCubit({
    required this.getPostsUseCase,
  }) : super(const BasePaginationState.initial());


  Future<void> getPostsPaginated() async {
    if(isLoading || allDataFetched) return;

    if(page==1) {
      emit(const BasePaginationState.loading());
    } else {
      emit(const BasePaginationState.paginationLoading());
    }

    _debouncer.debounce(() async {
      var data = await getPostsUseCase(GetPostsParams(
        page: page,
        limit: limit,
      ));

      emit(data.fold(
            (error) => BasePaginationState.error(errorModel: error),
            (data) {
          if(data.data.length < limit) {
            allDataFetched = true;
          }
          if (data.data.isNotEmpty) {
            page++;
            items.addAll(data.data);

            return BasePaginationState.data(data: data.data);
          } else {
            return const BasePaginationState.data(data: []);
          }
        },
      ));
      isLoading = false;
    });
  }
}