import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mohamad_komaiha_infosysta_assignment/injection.dart';
import 'package:responsive_framework/responsive_framework.dart';
import '../../core/constants/const.dart';
import '../logic/app_bloc.dart';
import '../logic/app_state.dart';
import '../routes/router.dart';
import '../theme/app_theme.dart';

class MyApp extends StatelessWidget with WidgetsBindingObserver {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          lazy: false,
          create: (context) => serviceLocator<AppBloc>(),
        ),
      ],
      child: BlocBuilder<AppBloc, AppState>(
        builder: (BuildContext context, AppState state) {
          return MaterialApp.router(
            builder: (context, widget) => ResponsiveWrapper.builder(
              BouncingScrollWrapper.builder(context, widget!),
              maxWidth: 1200,
              minWidth: 480,
              defaultScale: true,
              breakpoints: const [
                ResponsiveBreakpoint.resize(480, name: MOBILE),
                ResponsiveBreakpoint.autoScale(800, name: TABLET),
                ResponsiveBreakpoint.resize(1000, name: DESKTOP),
              ],
              background: Container(color: kBGWhite),
            ),
            debugShowCheckedModeBanner: false,
            theme: AppTheme(context: context).getLightThemeData(),
            routerDelegate: AutoRouterDelegate(
              serviceLocator<AppRouter>(),
            ),
            routeInformationParser:
            serviceLocator<AppRouter>().defaultRouteParser(),
          );
        },
      ),
    );
  }
}