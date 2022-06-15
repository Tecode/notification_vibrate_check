import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:notification_vibrate_check/notification_vibrate_check.dart';

void main() {
  const MethodChannel channel = MethodChannel('notification_vibrate_check');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await NotificationVibrateCheck.platformVersion, '42');
  });
}
