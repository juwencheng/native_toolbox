
import 'dart:async';
import 'dart:ffi';

import 'package:flutter/services.dart';

class NativeToolbox {
  static const MethodChannel _channel =
      const MethodChannel('native_toolbox');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
  static void crashApp() async {
    await _channel.invokeMethod('crashApp');
  }
}
