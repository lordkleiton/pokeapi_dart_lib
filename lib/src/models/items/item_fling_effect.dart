import '../common/effect.dart';
import '../common/named_api_resource.dart';
import '../common/named_api_resource_list.dart';
import '../../network/rest.dart';

///The various effects of the move "Fling" when used with different items.
class ItemFlingEffect {
  int id;
  String name;
  List<Effect> effectEntries;
  List<NamedApiResource> items;

  ItemFlingEffect.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        effectEntries = Effect.fromList(json['effect_entries']),
        items = NamedApiResource.fromList(json['items']);

  static Future<ItemFlingEffect> get(String query) async =>
      ItemFlingEffect.fromJson(
          await RestConnection.get<ItemFlingEffect>(query));

  static Future<NamedApiResourceList> find(
          [int limit = 0, int skip = 0]) async =>
      NamedApiResourceList.fromJson(
          await RestConnection.find<ItemFlingEffect>(limit, skip));

  @override
  toString() =>
      '$runtimeType {id: $id, name: $name, effectEntries: $effectEntries, items: $items}';
}
