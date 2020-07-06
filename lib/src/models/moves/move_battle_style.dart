import '../common/name.dart';
import '../common/named_api_resource_list.dart';
import '../../network/rest.dart';

///Styles of moves when used in the Battle Palace.
///See [Bulbapedia](http://bulbapedia.bulbagarden.net/wiki/Battle_Frontier_(Generation_III)) for greater detail.
class MoveBattleStyle {
  int id;
  String name;
  List<Name> names;

  MoveBattleStyle.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        names = Name.fromList(json['names'] ?? []);

  static Future<MoveBattleStyle> get(String query) async =>
      MoveBattleStyle.fromJson(
          await RestConnection.get<MoveBattleStyle>(query));

  static Future<NamedApiResourceList> find(
          [int limit = 0, int skip = 0]) async =>
      NamedApiResourceList.fromJson(
          await RestConnection.find<MoveBattleStyle>(limit, skip));

  @override
  toString() => '$runtimeType {id: $id, name: $name, names: $names}';
}
