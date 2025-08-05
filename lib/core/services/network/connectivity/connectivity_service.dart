import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

enum NetworkStatus { online, offline }

class ConnectivityService {
  final _connectivity = Connectivity();

  Stream<NetworkStatus> get connectivityStream async* {
    yield await _getStatus();
    await for (final result in _connectivity.onConnectivityChanged) {
      yield _mapResultToStatus(result.first);
    }
  }

  Future<NetworkStatus> _getStatus() async {
    final result = await _connectivity.checkConnectivity();
    return _mapResultToStatus(result.first);
  }

  NetworkStatus _mapResultToStatus(ConnectivityResult result) {
    return result == ConnectivityResult.none
        ? NetworkStatus.offline
        : NetworkStatus.online;
  }
}

final connectivityServiceProvider = Provider((ref) => ConnectivityService());

final connectivityStatusProvider = StreamProvider<NetworkStatus>((ref) {
  final service = ref.watch(connectivityServiceProvider);
  return service.connectivityStream;
});
