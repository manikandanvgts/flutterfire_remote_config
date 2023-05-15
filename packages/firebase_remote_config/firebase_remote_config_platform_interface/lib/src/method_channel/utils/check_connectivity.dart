import 'package:connectivity_plus/connectivity_plus.dart';

abstract class CheckConnectivity {
  CheckConnectivity._();

  Future<bool> isConnected() async {
    final connectivityResult = await Connectivity().checkConnectivity();
    return connectivityResult == ConnectivityResult.none;
  }
}
