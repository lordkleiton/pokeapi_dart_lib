import '../common/named_api_resource.dart';
import '../common/named_api_resource_list.dart';
import '../common/version_game_index.dart';
import '../pokemon/pokemon_ability.dart';
import '../pokemon/pokemon_held_item.dart';
import '../pokemon/pokemon_move.dart';
import '../pokemon/pokemon_sprites.dart';
import '../pokemon/pokemon_stat.dart';
import '../pokemon/pokemon_type.dart';
import '../../network/rest.dart';

///Pokémon are the creatures that inhabit the world of the Pokémon games. They can be caught using Pokéballs
///and trained by battling with other Pokémon. Each Pokémon belongs to a specific species but may take on a
///variant which makes it differ from other Pokémon of the same species, such as base stats, available abilities
///and typings.
///See [Bulbapedia](http://bulbapedia.bulbagarden.net/wiki/Pok%C3%A9mon_(species)) for greater detail.
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
