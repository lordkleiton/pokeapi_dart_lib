import 'package:flutter_pokedex/models/common/name.dart';
import 'package:flutter_pokedex/models/common/named_api_resource.dart';
import 'package:flutter_pokedex/models/common/named_api_resource_list.dart';
import 'package:flutter_pokedex/network/rest.dart';

class EncounterCondition {
  int id;
  String name;
  List<Name> names;
  List<NamedApiResource> values;

  EncounterCondition.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        names = Name.fromList(json['names'] ?? []),
        values = NamedApiResource.fromList(json['values'] ?? []);

  static Future<EncounterCondition> get(String query) async =>
      EncounterCondition.fromJson(
          await RestConnection.get<EncounterCondition>(query));

  static Future<NamedApiResourceList> find(
          [int limit = 0, int skip = 0]) async =>
      NamedApiResourceList.fromJson(
          await RestConnection.find<EncounterCondition>(limit, skip));

  @override
  toString() =>
      '$runtimeType {id: $id, name: $name, names: $names, values: $values}';
}
