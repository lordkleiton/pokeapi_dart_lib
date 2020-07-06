import '../common/name.dart';
import '../common/named_api_resource.dart';
import '../common/named_api_resource_list.dart';
import '../../network/rest.dart';

///Colors used for sorting Pokémon in a Pokédex. The color listed in the Pokédex is usually the color
/// most apparent or covering each Pokémon's body. No orange category exists;
/// Pokémon that are primarily orange are listed as red or brown.
class PokemonColor {
  int id;
  String name;
  List<Name> names;
  List<NamedApiResource> pokemonSpecies;

  PokemonColor.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        names = Name.fromList(json['names'] ?? []),
        pokemonSpecies =
            NamedApiResource.fromList(json['pokemon_species'] ?? []);

  static Future<PokemonColor> get(String query) async =>
      PokemonColor.fromJson(await RestConnection.get<PokemonColor>(query));

  static Future<NamedApiResourceList> find(
          [int limit = 0, int skip = 0]) async =>
      NamedApiResourceList.fromJson(
          await RestConnection.find<PokemonColor>(limit, skip));

  @override
  toString() =>
      '$runtimeType {id: $id, name: $name, names: $names, pokemonspecies: $pokemonSpecies}';
}
