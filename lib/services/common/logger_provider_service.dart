import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoggerService extends ProviderObserver {
  @override
  void didUpdateProvider(
    ProviderBase<Object?> provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) {
    debugPrint('''
{
  "provider": "${provider.name ?? provider.runtimeType}",
  "newValue": "${_truncate(newValue)}",
}''', wrapWidth: 90);
  }

  String _truncate(Object? value) {
    final String str = value.toString();
    const int maxLength = 400;
    return str.length > maxLength ? '${str.substring(0, maxLength)}...' : str;
  }
}
