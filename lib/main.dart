
import 'package:flutter/material.dart';
import 'package:mohamad_komaiha_infosysta_assignment/injection.dart';
import 'package:mohamad_komaiha_infosysta_assignment/src/app/widget/app.dart';

import 'src/app/logic/app_bloc.dart';
import 'injection.dart' as injections;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await injections.init();
  await serviceLocator<AppBloc>().init();

  runApp(
    const MyApp(),
  );
}