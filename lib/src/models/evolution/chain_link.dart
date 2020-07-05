import 'package:flutter_pokedex/models/common/named_api_resource.dart';
import 'package:flutter_pokedex/models/evolution/evolution_detail.dart';

class ChainLink {
  bool isBaby;
  NamedApiResource species;
  List<EvolutionDetail> evolutionDetails;
  List<ChainLink> evolvesTo;

  ChainLink.fromJson(Map<String, dynamic> json)
      : isBaby = json['is_baby'],
        species = NamedApiResource.fromJson(json['species']),
        evolutionDetails =
            EvolutionDetail.fromList(json['evolution_details'] ?? []),
        evolvesTo = ChainLink.fromList(json['evolves_to'] ?? []);

  static List<ChainLink> fromList(List<dynamic> list) =>
      list.map((e) => ChainLink.fromJson(e)).toList();

  @override
  toString() =>
      '$runtimeType {isBaby: $isBaby, species: $species, evolutionDetails: $evolutionDetails, evolvesTo: $evolvesTo}';
}
