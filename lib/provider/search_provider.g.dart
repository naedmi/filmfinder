// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fetchSearchResultHash() => r'ea361c934df8d0d47b64c3bfb499374f49eba38b';

/// See also [fetchSearchResult].
@ProviderFor(fetchSearchResult)
final fetchSearchResultProvider =
    AutoDisposeFutureProvider<SearchResponse>.internal(
  fetchSearchResult,
  name: r'fetchSearchResultProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$fetchSearchResultHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef FetchSearchResultRef = AutoDisposeFutureProviderRef<SearchResponse>;
String _$filterHash() => r'81e82680af4e4c387d1a6fab19bfa44be9a7ef61';

/// See also [Filter].
@ProviderFor(Filter)
final filterProvider = AutoDisposeNotifierProvider<Filter, Filter>.internal(
  Filter.new,
  name: r'filterProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$filterHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Filter = AutoDisposeNotifier<Filter>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
