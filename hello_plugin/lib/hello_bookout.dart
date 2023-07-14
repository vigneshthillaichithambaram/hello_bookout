
import 'hello_bookout_platform_interface.dart';

class HelloBookout {
  Future<String?> getPlatformVersion() {
    return HelloBookoutPlatform.instance.getPlatformVersion();
  }
}
