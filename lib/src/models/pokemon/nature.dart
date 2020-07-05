import 'package:flutter_pokedex/models/common/name.dart';
import 'package:flutter_pokedex/models/common/named_api_resource.dart';
import 'package:flutter_pokedex/models/common/named_api_resource_list.dart';
import 'package:flutter_pokedex/models/pokemon/move_battle_style_preference.dart';
import 'package:flutter_pokedex/models/pokemon/nature_stat_change.dart';
import 'package:flutter_pokedex/network/rest.dart';

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
