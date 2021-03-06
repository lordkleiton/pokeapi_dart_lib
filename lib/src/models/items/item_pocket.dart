import '../common/name.dart';
import '../common/named_api_resource.dart';
import '../common/named_api_resource_list.dart';
import '../../network/rest.dart';

///Pockets within the players bag used for storing items by category.
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
