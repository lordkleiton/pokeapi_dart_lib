import '../common/encounter.dart';
import '../common/name.dart';
import '../common/named_api_resource.dart';
import '../common/named_api_resource_list.dart';
import '../../network/rest.dart';

///Encounter condition values are the various states that an encounter condition can have, i.e., time of day can be either day or night.
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
