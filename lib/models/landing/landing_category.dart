import 'package:freezed_annotation/freezed_annotation.dart';

part 'landing_category.freezed.dart';

@freezed
class LandingCategory with _$LandingCategory {
  const factory LandingCategory({
    required String title,
    required List<ClickablePoster> posters,
  }) = _LandingCategory;
}

@freezed
class ClickablePoster with _$ClickablePoster {
  const factory ClickablePoster({
    required int movieId,
    required String posterPath,
  }) = _ClickablePoster;
}
