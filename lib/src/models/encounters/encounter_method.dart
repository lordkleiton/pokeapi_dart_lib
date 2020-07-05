import 'package:flutter_pokedex/models/common/name.dart';
import 'package:flutter_pokedex/models/common/named_api_resource_list.dart';
import 'package:flutter_pokedex/network/rest.dart';

class EncounterMethod {
  int id;
  String name;
  int order;
  List<Name> names;

  EncounterMethod.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        order = json['order'],
        names = Name.fromList(json['names'] ?? []);

  static Future<EncounterMethod> get(String query) async =>
      EncounterMethod.fromJson(
          await RestConnection.get<EncounterMethod>(query));

  static Future<NamedApiResourceList> find(
          [int limit = 0, int skip = 0]) async =>
      NamedApiResourceList.fromJson(
          await RestConnection.find<EncounterMethod>(limit, skip));

  @override
  String toString() =>
      '$runtimeType {id: $id, name: $name, order: $order, names: $names}';
}
