import 'package:flutter_pokedex/models/common/resource_list.dart';
import 'package:flutter_pokedex/models/common/api_resource.dart';

class ApiResourceList extends ResourceList {
  List<ApiResource> results;

  ApiResourceList.fromJson(Map<String, dynamic> json)
      : results = (json['results'] as List<dynamic>)
            .map((e) => ApiResource.fromJson(e))
            .toList(),
        super.fromJson(json ?? {});

  static List<ApiResourceList> fromList(List<dynamic> list) =>
      list.map((e) => ApiResourceList.fromJson(e ?? {})).toList();

  @override
  String toString() =>
      '$runtimeType {count: $count, previous: $previous, next: $next, results: $results}';
}
