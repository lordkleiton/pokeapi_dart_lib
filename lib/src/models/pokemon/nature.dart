import '../common/name.dart';
import '../common/named_api_resource.dart';
import '../common/named_api_resource_list.dart';
import '../pokemon/move_battle_style_preference.dart';
import '../pokemon/nature_stat_change.dart';
import '../../network/rest.dart';

///Natures influence how a Pokémon's stats grow.
///See [Bulbapedia](http://bulbapedia.bulbagarden.net/wiki/Nature) for greater detail.
class Nature {
  int id;
  String name;
  NamedApiResource decreasedStat;
  NamedApiResource increasedStat;
  NamedApiResource hatesFlavor;
  NamedApiResource likesflavor;
  List<NatureStatChange> pokeathlonStatChanges;
  List<MoveBattleStylePreference> moveBattleStylePreferences;
  List<Name> names;

  Nature.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        decreasedStat = NamedApiResource.fromJson(json['decreased_stat'] ?? {}),
        increasedStat = NamedApiResource.fromJson(json['increased_stat'] ?? {}),
        hatesFlavor = NamedApiResource.fromJson(json['hates_flavor'] ?? {}),
        likesflavor = NamedApiResource.fromJson(json['likes_flavor'] ?? {}),
        pokeathlonStatChanges =
            NatureStatChange.fromList(json['pokeathlon_stat_changes'] ?? []),
        moveBattleStylePreferences = MoveBattleStylePreference.fromList(
            json['move_battle_style_preferences'] ?? []),
        names = Name.fromList(json['names'] ?? []);

  static Future<Nature> get(String query) async =>
      Nature.fromJson(await RestConnection.get<Nature>(query));

  static Future<NamedApiResourceList> find(
          [int limit = 0, int skip = 0]) async =>
      NamedApiResourceList.fromJson(
          await RestConnection.find<Nature>(limit, skip));

  @override
  toString() =>
      '$runtimeType {id: $id, name: $name, descreasedStat: $decreasedStat, increasedStat: $increasedStat, hatesFlavor: $hatesFlavor, likesFlavor: $likesflavor, pokeathlonStatChanges: $pokeathlonStatChanges, moveBattleStylePreferences: $moveBattleStylePreferences, names: $names}';
}
