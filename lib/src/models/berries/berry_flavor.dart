import '../berries/flavor_berry_map.dart';
import '../common/name.dart';
import '../common/named_api_resource.dart';
import '../common/named_api_resource_list.dart';
import '../../network/rest.dart';

///Flavors determine whether a Pokémon will benefit or suffer from eating a berry based on their nature.
///Check out [Bulbapedia](http://bulbapedia.bulbagarden.net/wiki/Flavor) for greater detail.
class BerryFlavor {
  int id;
  String name;
  List<FlavorBerryMap> berries;
  NamedApiResource contestType;
  List<Name> names;

  BerryFlavor.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        berries = FlavorBerryMap.fromList(json['berries'] ?? []),
        names = Name.fromList(json['names'] ?? []);

  static Future<BerryFlavor> get(String query) async =>
      BerryFlavor.fromJson(await RestConnection.get<BerryFlavor>(query));

  static Future<NamedApiResourceList> find(
          [int limit = 0, int skip = 0]) async =>
      NamedApiResourceList.fromJson(
          await RestConnection.find<BerryFlavor>(limit, skip));

  @override
  toString() =>
      '$runtimeType {id: $id, name: $name, berries: $berries, contestType: $contestType, names: $names}';
}
