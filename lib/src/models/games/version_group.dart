import 'package:flutter_pokedex/models/common/named_api_resource.dart';
import 'package:flutter_pokedex/models/common/named_api_resource_list.dart';
import 'package:flutter_pokedex/network/rest.dart';

class VersionGroup {
  int id;
  String name;
  int order;
  NamedApiResource generation;
  List<NamedApiResource> moveLearnMethods;
  List<NamedApiResource> pokedexes;
  List<NamedApiResource> regions;
  List<NamedApiResource> versions;

  VersionGroup.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        order = json['order'],
        generation = NamedApiResource.fromJson(json['generation']),
        moveLearnMethods = _h(json['move_learn_methods']),
        pokedexes = _h(json['pokedexes']),
        regions = _h(json['regions']),
        versions = _h(json['versions']);

  static List<NamedApiResource> _h(List<dynamic> list) =>
      NamedApiResource.fromList(list ?? []);

  static Future<VersionGroup> get(String query) async =>
      VersionGroup.fromJson(await RestConnection.get<VersionGroup>(query));

  static Future<NamedApiResourceList> find(
          [int limit = 0, int skip = 0]) async =>
      NamedApiResourceList.fromJson(
          await RestConnection.find<VersionGroup>(limit, skip));

  @override
  toString() =>
      '$runtimeType {id: $id, name: $name, order: $order, generation: $generation, moveLearnMethods: $moveLearnMethods, pokedexes: $pokedexes, regions: $regions, versions: $versions}';
}
