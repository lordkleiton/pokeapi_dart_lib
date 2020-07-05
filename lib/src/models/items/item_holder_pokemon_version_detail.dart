import 'package:flutter_pokedex/models/common/named_api_resource.dart';

class ItemHolderPokemonVersionDetail {
  int rarity;
  NamedApiResource version;

  ItemHolderPokemonVersionDetail.fromJson(Map<String, dynamic> json)
      : rarity = json['rarity'],
        version = NamedApiResource.fromJson(json['version']);

  static List<ItemHolderPokemonVersionDetail> fromList(List<dynamic> list) =>
      list
          .map((e) => ItemHolderPokemonVersionDetail.fromJson(e ?? {}))
          .toList();

  @override
  toString() => '$runtimeType {rarity: $rarity, version: $version}';
}
