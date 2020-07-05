import 'package:flutter_pokedex/models/common/description.dart';
import 'package:flutter_pokedex/models/common/name.dart';
import 'package:flutter_pokedex/models/common/named_api_resource.dart';
import 'package:flutter_pokedex/models/common/named_api_resource_list.dart';
import 'package:flutter_pokedex/network/rest.dart';

class ItemAttribute {
  int id;
  String name;
  List<NamedApiResource> items;
  List<Name> names;
  List<Description> descriptions;

  ItemAttribute.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        items = NamedApiResource.fromList(json['items']),
        names = Name.fromList(json['names']),
        descriptions = Description.fromList(json['descriptions']);

  static Future<ItemAttribute> get(String query) async =>
      ItemAttribute.fromJson(await RestConnection.get<ItemAttribute>(query));

  static Future<NamedApiResourceList> find(
          [int limit = 0, int skip = 0]) async =>
      NamedApiResourceList.fromJson(
          await RestConnection.find<ItemAttribute>(limit, skip));

  @override
  String toString() =>
      '$runtimeType {id: $id, name: $name, items: $items, names: $names, descriptions: $descriptions}';
}
