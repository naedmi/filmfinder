# filmfinder

MA SOSE2023 Gruppe 5

## Conventions

### api

Use the ```dioProvider``` for api calls. It injects your local .env file into the request.  
Your api key should be stored in the .env file.  
Example:

```
API_KEY=xxxxxxxxxxxxxxxxxxxxxxxxxxxx
```

### freezed - models

Use the ```@freezed``` annotation for models and generate the models with  
```flutter pub run build_runner build```

Use  
```flutter pub run build_runner watch -d```  
to generate (and overwrite) the models on save.

Example:   
(Note the ```fieldRename``` parameter for api models)

```dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_response.freezed.dart';

@freezed
class SearchResponse with _$SearchResponse {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory SearchResponse({
    required int page,
    required List<SearchResult> results,
  }) = _SearchResponse;

  factory SearchResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchResponseFromJson(json);
}
```

### riverpod

Use the ```@riverpod``` annotation for providers  
and add ```part 'filename.g.dart';``` to the file.

Similar to freezed, using  
```flutter pub run build_runner watch -d```  
will generate the files on save.

For further information consult the (new) [riverpod documentation](https://docs-v2.riverpod.dev/docs/introduction).

### branch names

```type/ticketnumber-titel```

For Example:
```feature/12-testpage```

### commit strategy

```
#ticketnumber Titel
* changes
```

For Example:

```
#12 Testpage
* add test page
```
