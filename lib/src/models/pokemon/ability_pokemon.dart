import 'package:flutter_pokedex/models/common/named_api_resource.dart';

class AbilityPokemon {
  bool isHidden;
  int slot;
  NamedApiResource pokemon;

  AbilityPokemon.fromJson(Map<String, dynamic> json)
      : isHidden = json['is_hidden'],
        slot = json['slot'],
        pokemon = NamedApiResource.fromJson(json['pokemon'] ?? {});

  static List<AbilityPokemon> fromList(List<dynamic> list) =>
      list.map((e) => AbilityPokemon.fromJson(e ?? {})).toList();

  @override
  toString() =>
      '$runtimeType {isHidden: $isHidden, slot: $slot, pokemon: $pokemon}';
}
