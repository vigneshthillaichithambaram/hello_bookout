import 'package:flutter_test/flutter_test.dart';
import 'package:book_out/book_out.dart';
import 'package:book_out/book_out_platform_interface.dart';
import 'package:book_out/book_out_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockBookOutPlatform
    with MockPlatformInterfaceMixin
    implements BookOutPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final BookOutPlatform initialPlatform = BookOutPlatform.instance;

  test('$MethodChannelBookOut is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelBookOut>());
  });

  test('getPlatformVersion', () async {
    BookOut bookOutPlugin = BookOut();
    MockBookOutPlatform fakePlatform = MockBookOutPlatform();
    BookOutPlatform.instance = fakePlatform;

    expect(await bookOutPlugin.getPlatformVersion(), '42');
  });
}
