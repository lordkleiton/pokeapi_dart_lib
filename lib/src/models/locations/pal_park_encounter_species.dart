import 'package:flutter_pokedex/models/common/named_api_resource.dart';

class PalParkEncounterSpecies {
  int baseScore;
  int rate;
  NamedApiResource pokemonSpecies;

  PalParkEncounterSpecies.fromJson(Map<String, dynamic> json)
      : baseScore = json['base_score'],
        rate = json['rate'],
        pokemonSpecies =
            NamedApiResource.fromJson(json['pokemon_species'] ?? {});

  static List<PalParkEncounterSpecies> fromList(List<dynamic> list) =>
      list.map((e) => PalParkEncounterSpecies.fromJson(e ?? {})).toList();

  @override
  toString() =>
      '$runtimeType {baseScore: $baseScore, rate: $rate, pokemonSpecies: $pokemonSpecies}';
}
