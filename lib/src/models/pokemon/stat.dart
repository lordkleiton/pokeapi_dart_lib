import '../common/api_resource.dart';
import '../common/name.dart';
import '../common/named_api_resource.dart';
import '../common/named_api_resource_list.dart';
import '../pokemon/move_stat_affect_sets.dart';
import '../pokemon/nature_stat_affect_sets.dart';
import '../../network/rest.dart';

///Stats determine certain aspects of battles. Each Pokémon has a value for each stat which
///grows as they gain levels and can be altered momentarily by effects in battles.
class Stat {
  int id;
  String name;
  int gameIndex;
  bool isBattleOnly;
  MoveStatAffectSets affectingMoves;
  NatureStatAffectSets affectingNatures;
  List<ApiResource> characteristics;
  NamedApiResource moveDamageClass;
  List<Name> names;

  Stat.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        gameIndex = json['game_index'],
        isBattleOnly = json['is_battle_only'],
        affectingMoves =
            MoveStatAffectSets.fromJson(json['affecting_moves'] ?? {}),
        affectingNatures =
            NatureStatAffectSets.fromJson(json['affecting_natures'] ?? {}),
        characteristics = ApiResource.fromList(json['characteristics'] ?? []),
        moveDamageClass =
            NamedApiResource.fromJson(json['move_damage_class'] ?? {}),
        names = Name.fromList(json['names'] ?? []);

  static Future<Stat> get(String query) async =>
      Stat.fromJson(await RestConnection.get<Stat>(query));

  static Future<NamedApiResourceList> find(
          [int limit = 0, int skip = 0]) async =>
      NamedApiResourceList.fromJson(
          await RestConnection.find<Stat>(limit, skip));

  @override
  toString() =>
      '$runtimeType {id: $id, name: $name, gameIndex: $gameIndex, isBattleOnly: $isBattleOnly, affectingMoves: $affectingMoves, affectingNatures: $affectingNatures, characteristics: $characteristics, moveDamageClass: $moveDamageClass, names: $names}';
}
