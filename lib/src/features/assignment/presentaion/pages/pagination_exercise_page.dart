import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mohamad_komaiha_infosysta_assignment/injection.dart';
import 'package:mohamad_komaiha_infosysta_assignment/src/core/common/logic/pagination/base_pagination_state/base_pagination_state.dart';
import 'package:mohamad_komaiha_infosysta_assignment/src/core/common/widget/error_view.dart';
import 'package:mohamad_komaiha_infosysta_assignment/src/core/constants/const.dart';
import 'package:mohamad_komaiha_infosysta_assignment/src/features/assignment/domain/entities/post.dart';
import 'package:mohamad_komaiha_infosysta_assignment/src/features/assignment/presentaion/logic/get_posts_cubit.dart';
import 'package:mohamad_komaiha_infosysta_assignment/src/features/assignment/presentaion/widgets/card_loading_list_widget.dart';
import 'package:mohamad_komaiha_infosysta_assignment/src/features/assignment/presentaion/widgets/card_loading_widget.dart';
import 'package:mohamad_komaiha_infosysta_assignment/src/features/assignment/presentaion/widgets/post_card.dart';

class PaginationExercisePage extends StatefulWidget {
  const PaginationExercisePage({super.key});

  @override
  State<PaginationExercisePage> createState() => _PaginationExercisePageState();
}

class _PaginationExercisePageState extends State<PaginationExercisePage> {
  GetPostsCubit getPostsCubit = serviceLocator<GetPostsCubit>();
  ScrollController scrollController = ScrollController();


  void scrollingListener() {
    scrollController.addListener(
          () {
        if (scrollController.offset >=
            scrollController.position.maxScrollExtent) {
          getPostsCubit.getPostsPaginated();
        }
      },
    );
  }
  initData () async{
    await  getPostsCubit.getPostsPaginated();
    Future.delayed(const Duration(milliseconds: 500)).then((value) {
      scrollingListener();
    });
  }


  @override
  void initState() {
    super.initState();
    initData();
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }
  List colors = [kPeachColor,kPrimaryColor,kDarkCyanColor,kPurpleColor];
  List arrowColors = [kPrimaryColor,kPeachColor,kGoldenColor,kCyanColor];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: Builder(
            builder: (context) {
              return AppBar(
                backgroundColor: kBlueColorLight,
                toolbarHeight: 80,
                elevation: 1,
                title:  Text('Pagination Exercise Page',
                  style:Theme.of(context).textTheme.titleLarge!.copyWith(
                    fontWeight: FontWeight.w500,
                    overflow: TextOverflow.ellipsis,
                    color: kWhiteColor,
                  ),),
              );
            }
        ),
      ),

      body: BlocBuilder<GetPostsCubit, BasePaginationState>(
        bloc: getPostsCubit,
        builder: (context, state) {
          return state.maybeWhen(
            loading: () {
              return const CardLoadingListWidget();
            },
            error: (error) => ErrorView(
              error: error.message ?? '',
              onRefresh: () {
                getPostsCubit.getPostsPaginated();
              },
            ),
            orElse: () {
              List<Post> posts = getPostsCubit.items;

              return SingleChildScrollView(
                controller: scrollController,
                child: Column(
                  children: [
                    ListView.builder(
                      itemCount: posts.length,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return PostCard(
                          post: posts[index],
                          cardColor: colors[index % colors.length],
                          arrowColor: arrowColors[index % arrowColors.length],
                                                  );
                      },
                    ),

                    state.maybeWhen(
                      paginationLoading: () => const Padding(
                        padding: EdgeInsets.all(20),
                        child: CardLoadingWidget()
                      ),
                      orElse: () => const SizedBox(),
                    ),

                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
