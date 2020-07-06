import '../common/description.dart';
import '../common/name.dart';
import '../common/named_api_resource.dart';
import '../common/named_api_resource_list.dart';
import '../../network/rest.dart';

///Methods by which Pokémon can learn moves.
class MoveLearnMethod {
  int id;
  String name;
  List<Description> descriptions;
  List<Name> names;
  List<NamedApiResource> versionGroups;

  MoveLearnMethod.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        descriptions = Description.fromList(json['descriptions'] ?? []),
        names = Name.fromList(json['names'] ?? []),
        versionGroups = NamedApiResource.fromList(json['version_groups'] ?? []);

  static Future<MoveLearnMethod> get(String query) async =>
      MoveLearnMethod.fromJson(
          await RestConnection.get<MoveLearnMethod>(query));

  static Future<NamedApiResourceList> find(
          [int limit = 0, int skip = 0]) async =>
      NamedApiResourceList.fromJson(
          await RestConnection.find<MoveLearnMethod>(limit, skip));

  @override
  toString() =>
      '$runtimeType {id: $id, name: $name, descriptions: $descriptions, versionGroups: $versionGroups, names: $names}';
}
