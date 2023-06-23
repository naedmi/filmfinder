import 'package:freezed_annotation/freezed_annotation.dart';

part '../common/filter.freezed.dart';

/// **************************************************************************

/// pickedProvider ***********************************************************

@freezed
class FilterProviderModel with _$FilterProviderModel {
  factory FilterProviderModel({
    @Default(<String, String>{}) Map<String, String> providers,
  }) = _FilterProviderModel;
}

/// **************************************************************************
