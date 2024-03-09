import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:mohamad_komaiha_infosysta_assignment/src/features/assignment/domain/entities/post.dart';
import 'package:mohamad_komaiha_infosysta_assignment/src/features/assignment/presentaion/pages/post_details_page.dart';
import 'package:mohamad_komaiha_infosysta_assignment/src/features/assignment/presentaion/pages/splash_screen.dart';
import 'package:mohamad_komaiha_infosysta_assignment/src/features/assignment/presentaion/pages/pagination_exercise_page.dart';

part 'router.gr.dart';

@CupertinoAutoRouter(replaceInRouteName: 'Page,Route', routes: <AutoRoute>[

  AutoRoute(
    path: '/',
    name: 'SplashScreenAppRouter',
    page: SplashScreen,
  ),
  AutoRoute(
    path: 'PaginationExercisePage',
    name: 'PaginationExercisePageAppRouter',
    page: PaginationExercisePage,
  ),
  AutoRoute(
    path: 'PostDetailsPage',
    name: 'PostDetailsPageAppRouter',
    page: PostDetailsPage,
  ),




])
class AppRouter extends _$AppRouter {}
