import '../common/name.dart';
import '../common/named_api_resource.dart';
import '../common/named_api_resource_list.dart';
import '../../network/rest.dart';

///Evolution triggers are the events and conditions that cause a Pokémon to evolve.
///Check out [Bulbapedia](http://bulbapedia.bulbagarden.net/wiki/Methods_of_evolution) for greater detail.
class EvolutionTrigger {
  int id;
  String name;
  List<Name> names;
  List<NamedApiResource> pokemonSpecies;

  EvolutionTrigger.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        names = Name.fromList(json['names'] ?? []),
        pokemonSpecies =
            NamedApiResource.fromList(json['pokemon_species'] ?? []);

  static Future<EvolutionTrigger> get(String query) async =>
      EvolutionTrigger.fromJson(
          await RestConnection.get<EvolutionTrigger>(query));

  static Future<NamedApiResourceList> find(
          [int limit = 0, int skip = 0]) async =>
      NamedApiResourceList.fromJson(
          await RestConnection.find<EvolutionTrigger>(limit, skip));

  @override
  toString() =>
      '$runtimeType {id: $id, name: $name, names: $names, pokemonSpecies: $pokemonSpecies}';
}
