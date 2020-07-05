import '../common/generation_game_index.dart';
import '../common/name.dart';
import '../common/named_api_resource.dart';
import '../common/named_api_resource_list.dart';
import '../../network/rest.dart';

class Location {
  int id;
  String name;
  NamedApiResource region;
  List<Name> names;
  List<GenerationGameIndex> gameIndices;
  List<NamedApiResource> areas;

  Location.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        region = NamedApiResource.fromJson(json['region']),
        gameIndices = GenerationGameIndex.fromList(json['game_indices']),
        areas = NamedApiResource.fromList(json['areas']);

  static Future<Location> get(String query) async =>
      Location.fromJson(await RestConnection.get<Location>(query));

  static Future<NamedApiResourceList> find(
          [int limit = 0, int skip = 0]) async =>
      NamedApiResourceList.fromJson(
          await RestConnection.find<Location>(limit, skip));

  @override
  toString() =>
      '$runtimeType {id: $id, name: $name, region: $region, names: $names, gameIndices: $gameIndices, areas: $areas}';
}
