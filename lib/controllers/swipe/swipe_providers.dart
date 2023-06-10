import 'package:filmfinder/controllers/swipe/swipe_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final AutoDisposeStateProvider<SwipeController> swipeControllerProvider =
    StateProvider.autoDispose<SwipeController>(
        (AutoDisposeStateProviderRef<SwipeController> ref) {
  return SwipeControllerImpl(ref);
});
