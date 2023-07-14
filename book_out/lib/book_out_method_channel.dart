import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'book_out_platform_interface.dart';

/// An implementation of [BookOutPlatform] that uses method channels.
class MethodChannelBookOut extends BookOutPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('book_out');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
