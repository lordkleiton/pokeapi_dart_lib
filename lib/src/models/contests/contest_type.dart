import '../common/named_api_resource.dart';
import '../common/named_api_resource_list.dart';
import '../contests/contest_name.dart';
import '../../network/rest.dart';

///Contest types are categories judges used to weigh a Pokémon's condition in Pokémon contests.
///Check out [Bulbapedia](http://bulbapedia.bulbagarden.net/wiki/Contest_condition) for greater detail.
class ContestType {
  int id;
  String name;
  NamedApiResource berryFlavor;
  List<ContestName> names;

  ContestType.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        berryFlavor = NamedApiResource.fromJson(json['berry_flavor']),
        names = ContestName.fromList(json['names'] ?? []);

  static Future<ContestType> get(String query) async =>
      ContestType.fromJson(await RestConnection.get<ContestType>(query));

  static Future<NamedApiResourceList> find(
          [int limit = 0, int skip = 0]) async =>
      NamedApiResourceList.fromJson(
          await RestConnection.find<ContestType>(limit, skip));

  @override
  toString() =>
      '$runtimeType {id: $id, name: $name, berryFlavor: $berryFlavor, names: $names}';
}
