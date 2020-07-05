import 'package:flutter_pokedex/models/common/named_api_resource.dart';

class PokemonAbility {
  bool isHidden;
  int slot;
  NamedApiResource ability;

  PokemonAbility.fromJson(Map<String, dynamic> json)
      : isHidden = json['is_hidden'],
        slot = json['slot'],
        ability = NamedApiResource.fromJson(json['ability'] ?? {});

  static List<PokemonAbility> fromList(List<dynamic> list) =>
      list.map((e) => PokemonAbility.fromJson(e ?? {})).toList();

  @override
  toString() =>
      '$runtimeType {isHidden: $isHidden, slot: $slot, ability: $ability}';
}
