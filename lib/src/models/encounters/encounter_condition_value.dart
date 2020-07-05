import 'package:flutter_pokedex/models/common/encounter.dart';
import 'package:flutter_pokedex/models/common/name.dart';
import 'package:flutter_pokedex/models/common/named_api_resource.dart';
import 'package:flutter_pokedex/models/common/named_api_resource_list.dart';
import 'package:flutter_pokedex/network/rest.dart';

class EncounterConditionValue {
  int id;
  String name;
  NamedApiResource condition;
  List<Name> names;

  EncounterConditionValue.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        condition = NamedApiResource.fromJson(json['condition']),
        names = Name.fromList(json['names'] ?? []);

  static Future<EncounterConditionValue> get(String query) async =>
      EncounterConditionValue.fromJson(
          await RestConnection.get<Encounter>(query));

  static Future<NamedApiResourceList> find(
          [int limit = 0, int skip = 0]) async =>
      NamedApiResourceList.fromJson(
          await RestConnection.find<EncounterConditionValue>(limit, skip));

  @override
  toString() =>
      '$runtimeType {id: $id, name: $name, condition: $condition, names: $names}';
}
