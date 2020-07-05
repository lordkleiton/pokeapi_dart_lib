import 'package:flutter_pokedex/models/common/named_api_resource.dart';

class PokemonEntry {
  int entryNumber;
  NamedApiResource pokemonSpecies;

  PokemonEntry.fromJson(Map<String, dynamic> json)
      : entryNumber = json['entry_number'],
        pokemonSpecies = NamedApiResource.fromJson(json['pokemon_species']);

  static List<PokemonEntry> fromList(List<dynamic> list) =>
      list.map((e) => PokemonEntry.fromJson(e ?? {})).toList();

  @override
  toString() =>
      '$runtimeType {entryNumber: $entryNumber, pokemonSpecies: $pokemonSpecies}';
}
