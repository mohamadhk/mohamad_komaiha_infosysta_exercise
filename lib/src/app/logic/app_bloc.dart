import 'dart:async';
import 'dart:math';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'app_event.dart';
import 'app_state.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc() : super(const AppState.refresh(i: 0)) {
    on<AppEvent>(_refreshApp);
  }

  StreamController connectionChangeController =
  StreamController.broadcast();

  final Connectivity _connectivity = Connectivity();

  Future<void> init() async {
    _connectivity.onConnectivityChanged.listen(_connectionChange);
    await setURL();
  }

  Stream get connectionChange => connectionChangeController.stream;

  void _connectionChange(ConnectivityResult result) {
    setURL();
  }

  Future<void> setURL() async {
    add(const AppEvent.requestRefresh());
  }

  void _refreshApp(AppEvent event, Emitter<AppState> emit) {
    final Random random = Random();
    final int randomNumber = random.nextInt(100);
    emit(AppState.refresh(i: randomNumber));
  }

  @override
  Future<void> close() {
    connectionChangeController.close();
    return super.close();
  }
}