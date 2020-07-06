import '../common/api_resource_list.dart';
import '../common/named_api_resource.dart';
import '../../network/rest.dart';

///Machines are the representation of items that teach moves to Pokémon. They vary from version to version,
///so it is not certain that one specific TM or HM corresponds to a single Machine.
class Machine {
  int id;
  NamedApiResource item;
  NamedApiResource move;
  NamedApiResource versionGroup;

  Machine.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        item = NamedApiResource.fromJson(json['item'] ?? {}),
        move = NamedApiResource.fromJson(json['move'] ?? {}),
        versionGroup = NamedApiResource.fromJson(json['version_group'] ?? {});

  static Future<Machine> get(String query) async =>
      Machine.fromJson(await RestConnection.get<Machine>(query));

  static Future<ApiResourceList> find([int limit = 0, int skip = 0]) async =>
      ApiResourceList.fromJson(await RestConnection.find<Machine>(limit, skip));

  @override
  toString() =>
      '$runtimeType {id: $id, item: $item, move: $move, versionGroup: $versionGroup}';
}
