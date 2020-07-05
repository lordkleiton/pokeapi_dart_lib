import 'package:flutter_pokedex/models/common/name.dart';
import 'package:flutter_pokedex/models/common/named_api_resource.dart';
import 'package:flutter_pokedex/models/common/named_api_resource_list.dart';
import 'package:flutter_pokedex/network/rest.dart';

class ItemPocket {
  int id;
  String name;
  List<NamedApiResource> categories;
  List<Name> names;

  ItemPocket.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        categories = NamedApiResource.fromList(json['categories']),
        names = Name.fromList(json['names']);

  static Future<ItemPocket> get(String query) async =>
      ItemPocket.fromJson(await RestConnection.get<ItemPocket>(query));

  static Future<NamedApiResourceList> find(
          [int limit = 0, int skip = 0]) async =>
      NamedApiResourceList.fromJson(
          await RestConnection.find<ItemPocket>(limit, skip));

  @override
  toString() =>
      '$runtimeType {id: $id, name: $name, categories: $categories, names: $names}';
}
