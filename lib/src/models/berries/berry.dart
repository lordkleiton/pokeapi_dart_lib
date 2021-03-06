import '../common/named_api_resource.dart';
import '../berries/berry_flavor_map.dart';
import '../common/named_api_resource_list.dart';
import '../../network/rest.dart';

///Berries are small fruits that can provide HP and status condition restoration, stat enhancement, and even damage negation when eaten by Pokémon.
///Check out [Bulbapedia](http://bulbapedia.bulbagarden.net/wiki/Berry) for greater detail.
class Berry {
  int id;
  String name;
  int growthTime;
  int maxHarvest;
  int naturalGiftPower;
  int size;
  int smoothness;
  int soilDryness;
  NamedApiResource firmness;
  List<BerryFlavorMap> flavors;
  NamedApiResource item;
  NamedApiResource naturalGiftType;

  Berry.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        growthTime = json['growth_time'],
        maxHarvest = json['max_harvest'],
        naturalGiftPower = json['natural_gift_power'],
        size = json['size'],
        smoothness = json['smoothness'],
        soilDryness = json['soil_dryness'],
        firmness = NamedApiResource.fromJson(json['firmness']),
        flavors = (json['flavors'] as List<dynamic>)
            .map((e) => BerryFlavorMap.fromJson(e))
            .toList(),
        item = NamedApiResource.fromJson(json['item']),
        naturalGiftType = NamedApiResource.fromJson(json['natural_gift_type']);

  static Future<Berry> get(String query) async =>
      Berry.fromJson(await RestConnection.get<Berry>(query));

  static Future<NamedApiResourceList> find(
          [int limit = 0, int skip = 0]) async =>
      NamedApiResourceList.fromJson(
          await RestConnection.find<Berry>(limit, skip));

  @override
  String toString() =>
      '$runtimeType {id: $id, name: $name, growthTime: $growthTime, maxHarvest: $maxHarvest, naturalGiftPower: $naturalGiftPower, size: $size, smoothness: $smoothness, soilDryness: $soilDryness, firmness: $firmness, flavors: $flavors, item: $item, naturalGiftType: $naturalGiftType}';
}
