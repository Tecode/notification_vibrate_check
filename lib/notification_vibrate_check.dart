import 'dart:async';

import 'package:flutter/services.dart';

class NotificationVibrateCheck {
  static const MethodChannel _channel = const MethodChannel('notification_vibrate_check');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
