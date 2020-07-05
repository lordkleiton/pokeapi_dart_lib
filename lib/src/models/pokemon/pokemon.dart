import 'package:flutter_pokedex/models/common/named_api_resource.dart';
import 'package:flutter_pokedex/models/common/named_api_resource_list.dart';
import 'package:flutter_pokedex/models/common/version_game_index.dart';
import 'package:flutter_pokedex/models/pokemon/pokemon_ability.dart';
import 'package:flutter_pokedex/models/pokemon/pokemon_held_item.dart';
import 'package:flutter_pokedex/models/pokemon/pokemon_move.dart';
import 'package:flutter_pokedex/models/pokemon/pokemon_sprites.dart';
import 'package:flutter_pokedex/models/pokemon/pokemon_stat.dart';
import 'package:flutter_pokedex/models/pokemon/pokemon_type.dart';
import 'package:flutter_pokedex/network/rest.dart';

class Pokemon {
  int id;
  String name;
  int baseExperience;
  int height;
  bool isDefault;
  int order;
  int weight;
  List<PokemonAbility> abilities;
  List<NamedApiResource> forms;
  List<VersionGameIndex> gameIndices;
  List<PokemonHeldItem> heldItems;
  String locationAreaEncounters;
  List<PokemonMove> moves;
  PokemonSprites sprites;
  NamedApiResource species;
  List<PokemonStat> stats;
  List<PokemonType> types;

  Pokemon.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        baseExperience = json['base_experience'],
        height = json['height'],
        isDefault = json['is_default'],
        order = json['order'],
        weight = json['weight'],
        abilities = PokemonAbility.fromList(json['abilities'] ?? []),
        forms = NamedApiResource.fromList(json['forms'] ?? []),
        gameIndices = VersionGameIndex.fromList(json['game_indices'] ?? []),
        heldItems = PokemonHeldItem.fromList(json['held_items'] ?? []),
        locationAreaEncounters = json['location_area_encounters'],
        moves = PokemonMove.fromList(json['moves'] ?? []),
        sprites = PokemonSprites.fromJson(json['sprites'] ?? {}),
        species = NamedApiResource.fromJson(json['species'] ?? {}),
        stats = PokemonStat.fromList(json['stats'] ?? {}),
        types = PokemonType.fromList(json['types'] ?? []);

  static Future<Pokemon> get(String query) async =>
      Pokemon.fromJson(await RestConnection.get<Pokemon>(query));

  static Future<NamedApiResourceList> find(
          [int limit = 0, int skip = 0]) async =>
      NamedApiResourceList.fromJson(
          await RestConnection.find<Pokemon>(limit, skip));

  @override
  toString() =>
      '$runtimeType {id: $id, name: $name, baseExperience: $baseExperience, height: $height, isDefault: $isDefault, order: $order, weight: $weight, abilities: $abilities, forms: $forms, gameIndices: $gameIndices, heldItems: $heldItems, locationAreaEncounters: $locationAreaEncounters, moves: $moves, sprites: $sprites, species: $species, stats: $stats, types: $types}';
}
