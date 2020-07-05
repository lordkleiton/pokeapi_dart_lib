import 'package:flutter_pokedex/models/common/name.dart';
import 'package:flutter_pokedex/models/common/named_api_resource.dart';
import 'package:flutter_pokedex/models/common/named_api_resource_list.dart';
import 'package:flutter_pokedex/models/pokemon/awesome_name.dart';
import 'package:flutter_pokedex/network/rest.dart';

class PokemonShape {
  int id;
  String name;
  List<AwesomeName> awesomeNames;
  List<Name> names;
  List<NamedApiResource> pokemonSpecies;

  PokemonShape.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        awesomeNames = AwesomeName.fromList(json['awesome_names'] ?? []),
        names = Name.fromList(json['names'] ?? []),
        pokemonSpecies =
            NamedApiResource.fromList(json['pokemon_species'] ?? []);

  static Future<PokemonShape> get(String query) async =>
      PokemonShape.fromJson(await RestConnection.get<PokemonShape>(query));

  static Future<NamedApiResourceList> find(
          [int limit = 0, int skip = 0]) async =>
      NamedApiResourceList.fromJson(
          await RestConnection.find<PokemonShape>(limit, skip));

  @override
  toString() =>
      '$runtimeType {id: $id, name: $name, awesomeNames: $awesomeNames, names: $names, pokemonSpecies: $pokemonSpecies}';
}
