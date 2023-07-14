import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'book_out_method_channel.dart';

abstract class BookOutPlatform extends PlatformInterface {
  /// Constructs a BookOutPlatform.
  BookOutPlatform() : super(token: _token);

  static final Object _token = Object();

  static BookOutPlatform _instance = MethodChannelBookOut();

  /// The default instance of [BookOutPlatform] to use.
  ///
  /// Defaults to [MethodChannelBookOut].
  static BookOutPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [BookOutPlatform] when
  /// they register themselves.
  static set instance(BookOutPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
