import '../common/description.dart';
import '../common/name.dart';
import '../common/named_api_resource.dart';
import '../common/named_api_resource_list.dart';
import '../../network/rest.dart';

///Damage classes moves can have, e.g. physical, special, or non-damaging.
class MoveDamageClass {
  int id;
  String name;
  List<Description> descriptions;
  List<NamedApiResource> moves;
  List<Name> names;

  MoveDamageClass.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        descriptions = Description.fromList(json['descriptions'] ?? []),
        moves = NamedApiResource.fromList(json['moves'] ?? []),
        names = Name.fromList(json['names'] ?? []);

  static Future<MoveDamageClass> get(String query) async =>
      MoveDamageClass.fromJson(
          await RestConnection.get<MoveDamageClass>(query));

  static Future<NamedApiResourceList> find(
          [int limit = 0, int skip = 0]) async =>
      NamedApiResourceList.fromJson(
          await RestConnection.find<MoveDamageClass>(limit, skip));

  @override
  toString() =>
      '$runtimeType {id: $id, name: $name, descriptions: $descriptions, moves: $moves, names: $names}';
}
