import '../common/name.dart';
import '../common/named_api_resource_list.dart';
import '../pokemon/nature_pokeathlon_stat_affect_sets.dart';
import '../../network/rest.dart';

///Pokeathlon Stats are different attributes of a Pokémon's performance in Pokéathlons.
///In Pokéathlons, competitions happen on different courses; one for each of the different Pokéathlon stats.
///See [Bulbapedia](http://bulbapedia.bulbagarden.net/wiki/Pok%C3%A9athlon) for greater detail.
class PokeathlonStat {
  int id;
  String name;
  List<Name> names;
  NaturePokeathlonStatAffectSets affectingNatures;

  PokeathlonStat.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        names = Name.fromList(json['names'] ?? []),
        affectingNatures =
            NaturePokeathlonStatAffectSets.fromJson(json['affecting_natures']);

  static Future<PokeathlonStat> get(String query) async =>
      PokeathlonStat.fromJson(await RestConnection.get<PokeathlonStat>(query));

  static Future<NamedApiResourceList> find(
          [int limit = 0, int skip = 0]) async =>
      NamedApiResourceList.fromJson(
          await RestConnection.find<PokeathlonStat>(limit, skip));

  @override
  toString() =>
      '$runtimeType {id: $id, name: $name, names: $names, affectingNatures: $affectingNatures}';
}
