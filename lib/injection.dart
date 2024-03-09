import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:mohamad_komaiha_infosysta_assignment/src/features/assignment/data/data_source/assignment_data_source.dart';
import 'package:mohamad_komaiha_infosysta_assignment/src/features/assignment/data/repositories/assignment_repository_impl.dart';
import 'package:mohamad_komaiha_infosysta_assignment/src/features/assignment/domain/repositories/assignment_repository.dart';
import 'package:mohamad_komaiha_infosysta_assignment/src/features/assignment/domain/use_cases/get_posts_use_case.dart';
import 'package:mohamad_komaiha_infosysta_assignment/src/features/assignment/presentaion/logic/get_posts_cubit.dart';
import 'src/app/logic/app_bloc.dart';
import 'src/app/routes/router.dart';
import 'src/core/utils/managers/http/http_manager.dart';

final serviceLocator = GetIt.instance;

Future<void> init() async {
  initInjections(serviceLocator);
  serviceLocator.allowReassignment = true;
}

void initInjections(GetIt serviceLocator) {
  //* Logic
  serviceLocator.registerLazySingleton<AppBloc>(() => AppBloc());

  //* Router
  serviceLocator.registerLazySingleton<AppRouter>(() => AppRouter());

  //* Network
  serviceLocator.registerLazySingleton<BaseOptions>(() => BaseOptions(
    headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      "charset": "utf-8",
      "Accept-Charset": "utf-8",
    },
    responseType: ResponseType.plain,
  ));

  serviceLocator.registerLazySingleton<HttpManager>(() => HttpManagerImpl(
    baseOptions: serviceLocator(),
  ));

  /// Data Source
  serviceLocator.registerLazySingleton<AssignmentDataSource>(
          () => AssignmentRemoteDataSource(httpManager: serviceLocator()));

  /// Implementation
  serviceLocator.registerLazySingleton<AssignmentRepository>(() =>
      AssignmentRepositoryImpl(dataSource: serviceLocator()));

  /// Use cases
  serviceLocator.registerFactory<GetPostsUseCase>(() => GetPostsUseCase(
    repository: serviceLocator(),
  ));

  /// Cubit
  serviceLocator.registerFactory<GetPostsCubit>(() => GetPostsCubit(
    getPostsUseCase: serviceLocator(),
  ));
}