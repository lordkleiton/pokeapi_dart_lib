import '../common/name.dart';
import '../common/named_api_resource.dart';
import '../common/named_api_resource_list.dart';
import '../../network/rest.dart';

///A region is an organized area of the Pokémon world. Most often, the main difference between regions is the species of
///Pokémon that can be encountered within them.
class Region {
  int id;
  List<NamedApiResource> locations;
  String name;
  List<Name> names;
  NamedApiResource mainGeneration;
  List<NamedApiResource> pokedexes;
  List<NamedApiResource> versionGroups;

  Region.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        locations = NamedApiResource.fromList(json['locations'] ?? []),
        name = json['name'],
        names = Name.fromList(json['names'] ?? []),
        mainGeneration = NamedApiResource.fromJson(json['main_generation']),
        pokedexes = NamedApiResource.fromList(json['pokedexes'] ?? []),
        versionGroups = NamedApiResource.fromList(json['version_groups'] ?? []);

  static Future<Region> get(String query) async =>
      Region.fromJson(await RestConnection.get<Region>(query));

  static Future<NamedApiResourceList> find(
          [int limit = 0, int skip = 0]) async =>
      NamedApiResourceList.fromJson(
          await RestConnection.find<Region>(limit, skip));

  @override
  toString() =>
      '$runtimeType {id: $id, locations: $locations, name: $name, names: $names, mainGeneration: $mainGeneration, pokedexes: $pokedexes, versionGroups: $versionGroups}';
}
