import 'package:flutter_pokedex/models/common/named_api_resource.dart';

class PokemonHeldItemVersion {
  NamedApiResource version;
  int rarity;

  PokemonHeldItemVersion.fromJson(Map<String, dynamic> json)
      : version = NamedApiResource.fromJson(json['version']),
        rarity = json['rarity'];

  static List<PokemonHeldItemVersion> fromList(List<dynamic> list) =>
      list.map((e) => PokemonHeldItemVersion.fromJson(e ?? {})).toList();

  @override
  toString() => '$runtimeType {version: $version, rarity: $rarity}';
}
