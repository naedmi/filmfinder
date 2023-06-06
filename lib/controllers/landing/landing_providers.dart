import 'package:filmfinder/controllers/landing/landing_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final AutoDisposeStateProvider<LandingController> landingControllerProvider =
    StateProvider.autoDispose<LandingController>(
        (AutoDisposeStateProviderRef<LandingController> ref) {
  return LandingControllerImpl(ref);
});
