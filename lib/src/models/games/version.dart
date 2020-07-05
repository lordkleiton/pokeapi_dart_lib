import 'package:flutter_pokedex/models/common/name.dart';
import 'package:flutter_pokedex/models/common/named_api_resource.dart';
import 'package:flutter_pokedex/models/common/named_api_resource_list.dart';
import 'package:flutter_pokedex/network/rest.dart';

class Version {
  int id;
  String name;
  List<Name> names;
  NamedApiResource versionGroup;

  Version.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        names = Name.fromList(json['names']),
        versionGroup = NamedApiResource.fromJson(json['version_group']);

  static Future<Version> get(String query) async =>
      Version.fromJson(await RestConnection.get<Version>(query));

  static Future<NamedApiResourceList> find(
          [int limit = 0, int skip = 0]) async =>
      NamedApiResourceList.fromJson(
          await RestConnection.find<Version>(limit, skip));

  @override
  toString() =>
      '$runtimeType {id: $id, name: $name, names: $names, versionGroup: $versionGroup}';
}
