import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:native_toolbox/native_toolbox.dart';

void main() {
  const MethodChannel channel = MethodChannel('native_toolbox');

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
    expect(await NativeToolbox.platformVersion, '42');
  });
}
