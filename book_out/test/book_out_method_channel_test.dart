import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:book_out/book_out_method_channel.dart';

void main() {
  MethodChannelBookOut platform = MethodChannelBookOut();
  const MethodChannel channel = MethodChannel('book_out');

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
    expect(await platform.getPlatformVersion(), '42');
  });
}
