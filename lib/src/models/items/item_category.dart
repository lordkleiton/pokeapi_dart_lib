import 'package:flutter_pokedex/models/common/name.dart';
import 'package:flutter_pokedex/models/common/named_api_resource.dart';
import 'package:flutter_pokedex/models/common/named_api_resource_list.dart';
import 'package:flutter_pokedex/network/rest.dart';

class ItemCategory {
  int id;
  String name;
  List<NamedApiResource> items;
  List<Name> names;
  NamedApiResource pocket;

  ItemCategory.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        items = NamedApiResource.fromList(json['items']),
        names = Name.fromList(json['names']),
        pocket = NamedApiResource.fromJson(json['pocket']);

  static Future<ItemCategory> get(String query) async =>
      ItemCategory.fromJson(await RestConnection.get<ItemCategory>(query));

  static Future<NamedApiResourceList> find(
          [int limit = 0, int skip = 0]) async =>
      NamedApiResourceList.fromJson(
          await RestConnection.find<ItemCategory>(limit, skip));

  @override
  String toString() =>
      '$runtimeType {id: $id, name: $name, items: $items, names: $names, pocket: $pocket}';
}
