import 'package:flutter_pokedex/models/common/named_api_resource.dart';

class PokemonSpeciesVariety {
  bool isDefault;
  NamedApiResource pokemon;

  PokemonSpeciesVariety.fromJson(Map<String, dynamic> json)
      : isDefault = json['is_default'],
        pokemon = NamedApiResource.fromJson(json['pokemon'] ?? {});

  static List<PokemonSpeciesVariety> fromList(List<dynamic> list) =>
      list.map((e) => PokemonSpeciesVariety.fromJson(e ?? {})).toList();

  @override
  toString() => '$runtimeType {isDefault: $isDefault, pokemon: $pokemon}';
}
