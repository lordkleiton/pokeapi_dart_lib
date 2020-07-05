import 'package:flutter_pokedex/models/common/description.dart';
import 'package:flutter_pokedex/models/common/name.dart';
import 'package:flutter_pokedex/models/common/named_api_resource.dart';
import 'package:flutter_pokedex/models/common/named_api_resource_list.dart';
import 'package:flutter_pokedex/models/games/pokemon_entry.dart';
import 'package:flutter_pokedex/network/rest.dart';

class Pokedex {
  int id;
  String name;
  bool isMainSeries;
  List<Description> descriptions;
  List<Name> names;
  List<PokemonEntry> pokemonEntries;
  NamedApiResource region;
  List<NamedApiResource> versionGroups;

  Pokedex.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        isMainSeries = json['is_main_series'],
        descriptions = Description.fromList(json['descriptions'] ?? []),
        names = Name.fromList(json['names'] ?? []),
        pokemonEntries = PokemonEntry.fromList(json['pokemon_entries'] ?? []),
        region = NamedApiResource.fromJson(json['region'] ?? {}),
        versionGroups = NamedApiResource.fromList(json['version_groups'] ?? []);

  static Future<Pokedex> get(String query) async =>
      Pokedex.fromJson(await RestConnection.get<Pokedex>(query));

  static Future<NamedApiResourceList> find(
          [int limit = 0, int skip = 0]) async =>
      NamedApiResourceList.fromJson(
          await RestConnection.find<Pokedex>(limit, skip));

  @override
  toString() =>
      '$runtimeType {id: $id, name: $name, isMainSeries: $isMainSeries, descriptions: $descriptions, names: $names, pokemonEntries: $pokemonEntries, region: $region, versionGroups: $versionGroups}';
}
