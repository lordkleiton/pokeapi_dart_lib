import '../common/name.dart';
import '../common/named_api_resource.dart';
import '../common/named_api_resource_list.dart';
import '../../network/rest.dart';

///Habitats are generally different terrain Pokémon can be found in but can also be areas designated
///for rare or legendary Pokémon.
class PokemonHabitat {
  int id;
  String name;
  List<Name> names;
  List<NamedApiResource> pokemonSpecies;

  PokemonHabitat.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        names = Name.fromList(json['names'] ?? []),
        pokemonSpecies =
            NamedApiResource.fromList(json['pokemon_species'] ?? []);

  static Future<PokemonHabitat> get(String query) async =>
      PokemonHabitat.fromJson(await RestConnection.get<PokemonHabitat>(query));

  static Future<NamedApiResourceList> find(
          [int limit = 0, int skip = 0]) async =>
      NamedApiResourceList.fromJson(
          await RestConnection.find<PokemonHabitat>(limit, skip));

  @override
  toString() =>
      '$runtimeType {id: $id, name: $name, names: $names, pokemonSpecies: $pokemonSpecies}';
}
