import '../common/description.dart';
import '../common/named_api_resource.dart';
import '../common/named_api_resource_list.dart';
import '../pokemon/growth_rate_experience_level.dart';
import '../../network/rest.dart';

///Growth rates are the speed with which Pokémon gain levels through experience.
///Check out [Bulbapedia](http://bulbapedia.bulbagarden.net/wiki/Experience) for greater detail.
class GrowthRate {
  int id;
  String name;
  String formula;
  List<Description> descriptions;
  List<GrowthRateExperienceLevel> levels;
  List<NamedApiResource> pokemonSpecies;

  GrowthRate.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        formula = json['formula'],
        descriptions = Description.fromList(json['descriptions'] ?? []),
        levels = GrowthRateExperienceLevel.fromList(json['levels'] ?? []),
        pokemonSpecies = NamedApiResource.fromList(json['pokemon_species']);

  static Future<GrowthRate> get(String query) async =>
      GrowthRate.fromJson(await RestConnection.get<GrowthRate>(query));

  static Future<NamedApiResourceList> find(
          [int limit = 0, int skip = 0]) async =>
      NamedApiResourceList.fromJson(
          await RestConnection.find<GrowthRate>(limit, skip));

  @override
  toString() =>
      '$runtimeType {id: $id, name: $name, formula: $formula, descriptions: $descriptions, levels: $levels, pokemonSpecies: $pokemonSpecies}';
}
