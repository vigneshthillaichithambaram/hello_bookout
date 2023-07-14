import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'hello_bookout_method_channel.dart';

abstract class HelloBookoutPlatform extends PlatformInterface {
  /// Constructs a HelloBookoutPlatform.
  HelloBookoutPlatform() : super(token: _token);

  static final Object _token = Object();

  static HelloBookoutPlatform _instance = MethodChannelHelloBookout();

  /// The default instance of [HelloBookoutPlatform] to use.
  ///
  /// Defaults to [MethodChannelHelloBookout].
  static HelloBookoutPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [HelloBookoutPlatform] when
  /// they register themselves.
  static set instance(HelloBookoutPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
