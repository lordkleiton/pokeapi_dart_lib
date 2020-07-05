import 'package:flutter_pokedex/models/common/named_api_resource.dart';

class PokemonType {
  int slot;
  NamedApiResource type;

  PokemonType.fromJson(Map<String, dynamic> json)
      : slot = json['slot'],
        type = NamedApiResource.fromJson(json['type'] ?? {});

  static List<PokemonType> fromList(List<dynamic> list) =>
      list.map((e) => PokemonType.fromJson(e ?? {})).toList();

  @override
  toString() => '$runtimeType {slot: $slot, type: $type}';
}
