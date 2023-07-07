import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'internet_cubit.freezed.dart';
part 'internet_state.dart';

class InternetCubit extends Cubit<InternetState> {
  InternetCubit(this._connectivity) : super(const InternetState.loading()) {
    monitorInternetConnection();
  }
  final Connectivity _connectivity;
  late StreamSubscription<ConnectivityResult> _connectivityStreamSubscription;

  Future<void> monitorInternetConnection() async {
    checkInternetConnectionType(await _connectivity.checkConnectivity());
    _connectivityStreamSubscription =
        _connectivity.onConnectivityChanged.listen(checkInternetConnectionType);
  }

  void checkInternetConnectionType(ConnectivityResult connectivityResult) {
    if (connectivityResult == ConnectivityResult.wifi ||
        connectivityResult == ConnectivityResult.mobile) {
      emit(_Connected(connectivityResult));
    } else if (connectivityResult == ConnectivityResult.none) {
      emit(const _Disconnected());
    }
  }

  @override
  Future<void> close() {
    _connectivityStreamSubscription.cancel();
    return super.close();
  }
}
