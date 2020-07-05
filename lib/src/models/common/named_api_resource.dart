import 'package:flutter_pokedex/models/common/api_resource.dart';

class NamedApiResource extends ApiResource {
  String name;

  NamedApiResource.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        super.fromJson(json ?? {});

  static List<NamedApiResource> fromList(List<dynamic> list) =>
      list.map((e) => NamedApiResource.fromJson(e)).toList();

  @override
  String toString() => '$runtimeType {name: $name, url: $url}';
}
