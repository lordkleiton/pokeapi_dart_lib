import 'package:flutter_pokedex/models/common/named_api_resource.dart';
import 'package:flutter_pokedex/models/items/item_holder_pokemon_version_detail.dart';

class ItemHolderPokemon {
  NamedApiResource pokemon;
  List<ItemHolderPokemonVersionDetail> versionDetails;

  ItemHolderPokemon.fromJson(Map<String, dynamic> json)
      : pokemon = NamedApiResource.fromJson(json['pokemon']),
        versionDetails =
            ItemHolderPokemonVersionDetail.fromList(json['version_details']);

  static List<ItemHolderPokemon> fromList(List<dynamic> list) =>
      list.map((e) => ItemHolderPokemon.fromJson(e ?? {})).toList();

  @override
  toString() =>
      '$runtimeType {pokemon: $pokemon, versionDetails: $versionDetails}';
}
