import 'package:flutter_pokedex/models/common/resource_list.dart';
import 'package:flutter_pokedex/models/common/named_api_resource.dart';

class NamedApiResourceList extends ResourceList {
  List<NamedApiResource> results;

  NamedApiResourceList.fromJson(Map<String, dynamic> json)
      : results = (json['results'] as List<dynamic>)
            .map((e) => NamedApiResource.fromJson(e))
            .toList(),
        super.fromJson(json ?? {});

  static List<NamedApiResourceList> fromList(List<dynamic> list) =>
      list.map((e) => NamedApiResourceList.fromJson(e ?? {})).toList();

  @override
  String toString() =>
      '$runtimeType {count: $count, previous: $previous, next: $next, results: $results}';
}
