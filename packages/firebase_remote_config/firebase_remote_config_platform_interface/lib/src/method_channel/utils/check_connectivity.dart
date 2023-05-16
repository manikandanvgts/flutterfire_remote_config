import 'package:connectivity_plus/connectivity_plus.dart';

abstract class CheckConnectivity {
  CheckConnectivity._();
  static Future<bool> isNotConnected() async {
    final connectivityResult = await Connectivity().checkConnectivity();
    return connectivityResult == ConnectivityResult.none;
  }
}
