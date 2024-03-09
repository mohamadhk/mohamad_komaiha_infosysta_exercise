// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    SplashScreenAppRouter.name: (routeData) {
      return CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const SplashScreen(),
      );
    },
    PaginationExercisePageAppRouter.name: (routeData) {
      return CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const PaginationExercisePage(),
      );
    },
    PostDetailsPageAppRouter.name: (routeData) {
      final args = routeData.argsAs<PostDetailsPageAppRouterArgs>();
      return CupertinoPageX<dynamic>(
        routeData: routeData,
        child: PostDetailsPage(
          key: args.key,
          post: args.post,
        ),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          SplashScreenAppRouter.name,
          path: '/',
        ),
        RouteConfig(
          PaginationExercisePageAppRouter.name,
          path: 'PaginationExercisePage',
        ),
        RouteConfig(
          PostDetailsPageAppRouter.name,
          path: 'PostDetailsPage',
        ),
      ];
}

/// generated route for
/// [SplashScreen]
class SplashScreenAppRouter extends PageRouteInfo<void> {
  const SplashScreenAppRouter()
      : super(
          SplashScreenAppRouter.name,
          path: '/',
        );

  static const String name = 'SplashScreenAppRouter';
}

/// generated route for
/// [PaginationExercisePage]
class PaginationExercisePageAppRouter extends PageRouteInfo<void> {
  const PaginationExercisePageAppRouter()
      : super(
          PaginationExercisePageAppRouter.name,
          path: 'PaginationExercisePage',
        );

  static const String name = 'PaginationExercisePageAppRouter';
}

/// generated route for
/// [PostDetailsPage]
class PostDetailsPageAppRouter
    extends PageRouteInfo<PostDetailsPageAppRouterArgs> {
  PostDetailsPageAppRouter({
    Key? key,
    required Post post,
  }) : super(
          PostDetailsPageAppRouter.name,
          path: 'PostDetailsPage',
          args: PostDetailsPageAppRouterArgs(
            key: key,
            post: post,
          ),
        );

  static const String name = 'PostDetailsPageAppRouter';
}

class PostDetailsPageAppRouterArgs {
  const PostDetailsPageAppRouterArgs({
    this.key,
    required this.post,
  });

  final Key? key;

  final Post post;

  @override
  String toString() {
    return 'PostDetailsPageAppRouterArgs{key: $key, post: $post}';
  }
}
