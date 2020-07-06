import '../common/description.dart';
import '../common/named_api_resource.dart';
import '../common/named_api_resource_list.dart';
import '../../network/rest.dart';

///Very general categories that loosely group move effects.
class MoveCategory {
  int id;
  String name;
  List<NamedApiResource> moves;
  List<Description> descriptions;

  MoveCategory.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        moves = NamedApiResource.fromList(json['moves'] ?? []),
        descriptions = Description.fromList(json['descriptions'] ?? []);

  static Future<MoveCategory> get(String query) async =>
      MoveCategory.fromJson(await RestConnection.get<MoveCategory>(query));

  static Future<NamedApiResourceList> find(
          [int limit = 0, int skip = 0]) async =>
      NamedApiResourceList.fromJson(
          await RestConnection.find<MoveCategory>(limit, skip));

  @override
  toString() =>
      '$runtimeType {id: $id, name: $name, moves: $moves, descriptions: $descriptions}';
}
