import 'package:flutter_pokedex/models/common/generation_game_index.dart';
import 'package:flutter_pokedex/models/common/name.dart';
import 'package:flutter_pokedex/models/common/named_api_resource.dart';
import 'package:flutter_pokedex/models/common/named_api_resource_list.dart';
import 'package:flutter_pokedex/models/pokemon/type_pokemon.dart';
import 'package:flutter_pokedex/models/pokemon/type_relations.dart';
import 'package:flutter_pokedex/network/rest.dart';

class Type {
  int id;
  String name;
  TypeRelations damageRelations;
  List<GenerationGameIndex> gameIndices;
  NamedApiResource generation;
  NamedApiResource moveDamageClass;
  List<Name> names;
  List<TypePokemon> pokemon;
  List<NamedApiResource> moves;

  Type.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        damageRelations =
            TypeRelations.fromJson(json['damage_relations'] ?? {}),
        gameIndices = GenerationGameIndex.fromList(json['game_indices'] ?? []),
        generation = NamedApiResource.fromJson(json['generation'] ?? {}),
        moveDamageClass =
            NamedApiResource.fromJson(json['mode_damage_class'] ?? {}),
        names = Name.fromList(json['names'] ?? []),
        pokemon = TypePokemon.fromList(json['pokemon'] ?? []),
        moves = NamedApiResource.fromList(json['moves'] ?? []);

  static Future<Type> get(String query) async =>
      Type.fromJson(await RestConnection.get<Type>(query));

  static Future<NamedApiResourceList> find(
          [int limit = 0, int skip = 0]) async =>
      NamedApiResourceList.fromJson(
          await RestConnection.find<Type>(limit, skip));

  @override
  toString() =>
      '$runtimeType {id: $id, name: $name, damageRelations: $damageRelations, gameIndices: $gameIndices, generation: $generation, moveDamageClass: $moveDamageClass, names: $names, pokemon: $pokemon, moves: $moves}';
}
