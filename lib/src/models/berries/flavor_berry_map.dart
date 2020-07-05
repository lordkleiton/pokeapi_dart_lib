import 'package:flutter_pokedex/models/common/named_api_resource.dart';

class FlavorBerryMap {
  int potency;
  NamedApiResource berry;

  FlavorBerryMap.fromJson(Map<String, dynamic> json)
      : potency = json['potency'],
        berry = NamedApiResource.fromJson(json['berry']);

  static List<FlavorBerryMap> fromList(List<dynamic> list) =>
      list.map((e) => FlavorBerryMap.fromJson(e)).toList();

  @override
  toString() => '$runtimeType {potency: $potency, berry: $berry}';
}
