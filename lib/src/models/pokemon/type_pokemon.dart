import 'package:flutter_pokedex/models/common/named_api_resource.dart';

class TypePokemon {
  int slot;
  NamedApiResource pokemon;

  TypePokemon.fromJson(Map<String, dynamic> json)
      : slot = json['slot'],
        pokemon = NamedApiResource.fromJson(json['pokemon'] ?? {});

  static List<TypePokemon> fromList(List<dynamic> list) =>
      list.map((e) => TypePokemon.fromJson(e ?? {})).toList();

  @override
  toString() => '$runtimeType {slot: $slot, pokemon: $pokemon}';
}
