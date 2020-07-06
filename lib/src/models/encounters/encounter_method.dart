import '../common/name.dart';
import '../common/named_api_resource_list.dart';
import '../../network/rest.dart';

///Methods by which the player might can encounter Pokémon in the wild, e.g., walking in tall grass.
///Check out [Bulbapedia](http://bulbapedia.bulbagarden.net/wiki/Wild_Pok%C3%A9mon) for greater detail.
class EncounterMethod {
  int id;
  String name;
  int order;
  List<Name> names;

  EncounterMethod.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        order = json['order'],
        names = Name.fromList(json['names'] ?? []);

  static Future<EncounterMethod> get(String query) async =>
      EncounterMethod.fromJson(
          await RestConnection.get<EncounterMethod>(query));

  static Future<NamedApiResourceList> find(
          [int limit = 0, int skip = 0]) async =>
      NamedApiResourceList.fromJson(
          await RestConnection.find<EncounterMethod>(limit, skip));

  @override
  String toString() =>
      '$runtimeType {id: $id, name: $name, order: $order, names: $names}';
}
