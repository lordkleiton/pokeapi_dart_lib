import 'package:flutter_pokedex/models/common/named_api_resource.dart';

class PokemonSpeciesGender {
  int rate;
  NamedApiResource pokemonSpecies;

  PokemonSpeciesGender.fromJson(Map<String, dynamic> json)
      : rate = json['rate'],
        pokemonSpecies =
            NamedApiResource.fromJson(json['pokemon_species'] ?? {});

  static List<PokemonSpeciesGender> fromList(List<dynamic> list) =>
      list.map((e) => PokemonSpeciesGender.fromJson(e ?? {})).toList();

  @override
  toString() => '$runtimeType {rate: $rate, pokemonSpecies: $pokemonSpecies}';
}
