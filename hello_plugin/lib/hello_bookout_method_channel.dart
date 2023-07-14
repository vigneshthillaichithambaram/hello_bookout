import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'hello_bookout_platform_interface.dart';

/// An implementation of [HelloBookoutPlatform] that uses method channels.
class MethodChannelHelloBookout extends HelloBookoutPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('hello_bookout');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
