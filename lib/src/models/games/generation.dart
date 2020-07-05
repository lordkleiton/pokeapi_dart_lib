import 'package:flutter_pokedex/models/common/name.dart';
import 'package:flutter_pokedex/models/common/named_api_resource.dart';
import 'package:flutter_pokedex/models/common/named_api_resource_list.dart';
import 'package:flutter_pokedex/network/rest.dart';

class Generation {
  int id;
  String name;
  List<NamedApiResource> abilities;
  List<Name> names;
  NamedApiResource mainRegion;
  List<NamedApiResource> moves;
  List<NamedApiResource> pokemonSpecies;
  List<NamedApiResource> types;
  List<NamedApiResource> versionGroups;

  Generation.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        abilities = _h(json['abilities']),
        names = Name.fromList(json['names'] ?? []),
        mainRegion = NamedApiResource.fromJson(json['main_region'] ?? {}),
        moves = _h(json['moves']),
        pokemonSpecies = _h(json['pokemon_species']),
        types = _h(json['types']),
        versionGroups = _h(json['version_groups']);

  static List<NamedApiResource> _h(List<dynamic> list) =>
      NamedApiResource.fromList(list ?? []);

  static Future<Generation> get(String query) async =>
      Generation.fromJson(await RestConnection.get<Generation>(query));

  static Future<NamedApiResourceList> find(
          [int limit = 0, int skip = 0]) async =>
      NamedApiResourceList.fromJson(
          await RestConnection.find<Generation>(limit, skip));

  @override
  toString() =>
      '$runtimeType {id: $id, name: $name, abilities: $abilities, names: $names, mainRegion: $mainRegion, moves: $moves, pokemonSpecies: $pokemonSpecies, types: $types, versionGroups: $versionGroups}';
}
