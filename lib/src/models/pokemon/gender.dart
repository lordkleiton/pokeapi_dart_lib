import 'package:flutter_pokedex/models/common/named_api_resource.dart';
import 'package:flutter_pokedex/models/common/named_api_resource_list.dart';
import 'package:flutter_pokedex/models/pokemon/pokemon_species_gender.dart';
import 'package:flutter_pokedex/network/rest.dart';

class Gender {
  int id;
  String name;
  List<PokemonSpeciesGender> pokemonSpeciesDetails;
  List<NamedApiResource> requiredForEvolution;

  Gender.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        pokemonSpeciesDetails = PokemonSpeciesGender.fromList(
            json['pokemon_species_details'] ?? []),
        requiredForEvolution =
            NamedApiResource.fromList(json['required_for_evolution'] ?? []);

  static Future<Gender> get(String query) async =>
      Gender.fromJson(await RestConnection.get<Gender>(query));

  static Future<NamedApiResourceList> find(
          [int limit = 0, int skip = 0]) async =>
      NamedApiResourceList.fromJson(
          await RestConnection.find<Gender>(limit, skip));

  @override
  toString() =>
      '$runtimeType {id: $id, name: $name, pokemonSpeciesDetails: $pokemonSpeciesDetails, requiredForEvolution: $requiredForEvolution}';
}
