
import 'book_out_platform_interface.dart';

class BookOut {
  Future<String?> getPlatformVersion() {
    return BookOutPlatform.instance.getPlatformVersion();
  }
}
