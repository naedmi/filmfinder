import 'package:freezed_annotation/freezed_annotation.dart';

part 'filter.freezed.dart';

/// **************************************************************************

/// pickedProvider ***********************************************************

@freezed
class FilterProviderModel with _$FilterProviderModel {
  factory FilterProviderModel({
    @Default(<String, (int, String)>{}) Map<String, (int, String)> providers,
  }) = _FilterProviderModel;
}

/// **************************************************************************
