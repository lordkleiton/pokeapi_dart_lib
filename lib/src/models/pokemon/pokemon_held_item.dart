import '../common/named_api_resource.dart';
import '../pokemon/pokemon_held_item_version.dart';

class PokemonHeldItem {
  NamedApiResource item;
  List<PokemonHeldItemVersion> versionDetails;

  PokemonHeldItem.fromJson(Map<String, dynamic> json)
      : item = NamedApiResource.fromJson(json['item']),
        versionDetails =
            PokemonHeldItemVersion.fromList(json['version_details']);

  static List<PokemonHeldItem> fromList(List<dynamic> list) =>
      list.map((e) => PokemonHeldItem.fromJson(e ?? {})).toList();

  @override
  toString() => '$runtimeType {item: $item, versionDetails: $versionDetails}';
}
