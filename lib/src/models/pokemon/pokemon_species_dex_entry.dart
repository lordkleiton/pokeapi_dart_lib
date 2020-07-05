import 'package:flutter_pokedex/models/common/named_api_resource.dart';

class PokemonSpeciesDexEntry {
  int entryNumber;
  NamedApiResource pokedex;

  PokemonSpeciesDexEntry.fromJson(Map<String, dynamic> json)
      : entryNumber = json['entry_number'],
        pokedex = NamedApiResource.fromJson(json['pokedex'] ?? {});

  static List<PokemonSpeciesDexEntry> fromList(List<dynamic> list) =>
      list.map((e) => PokemonSpeciesDexEntry.fromJson(e ?? {})).toList();

  @override
  toString() => '$runtimeType {entryNumber: $entryNumber, pokedex: $pokedex}';
}
