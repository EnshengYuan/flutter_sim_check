import 'dart:async';

import 'package:flutter/services.dart';

class FlutterSimCheck {
  static const MethodChannel _channel =
      const MethodChannel('flutter_sim_check');

  static Future<bool> checkSimExist() async {
    return await _channel.invokeMethod('check_sim_exist');
  }

  static Future<bool> checkIsSimulator() async {
    return await _channel.invokeMethod('check_is_simulator');
  }
}
