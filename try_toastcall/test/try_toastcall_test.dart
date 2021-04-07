import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:try_toastcall/try_toastcall.dart';

void main() {
  const MethodChannel channel = MethodChannel('try_toastcall');

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
    expect(await TryToastcall.platformVersion, '42');
  });
}
