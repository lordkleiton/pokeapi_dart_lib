import 'package:flutter_pokedex/models/common/name.dart';
import 'package:flutter_pokedex/models/common/named_api_resource.dart';
import 'package:flutter_pokedex/models/common/named_api_resource_list.dart';
import 'package:flutter_pokedex/network/rest.dart';

class BerryFirmness {
  int id;
  String name;
  List<NamedApiResource> berries;
  List<Name> names;

  BerryFirmness.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        berries = NamedApiResource.fromList(json['berries'] ?? []),
        names = Name.fromList(json['names'] ?? []);

  @override
  toString() =>
      '$runtimeType {id: $id, name: $name, berries: $berries, names: $names}';

  static Future<BerryFirmness> get(String query) async =>
      BerryFirmness.fromJson(await RestConnection.get<BerryFirmness>(query));

  static Future<NamedApiResourceList> find(
          [int limit = 0, int skip = 0]) async =>
      NamedApiResourceList.fromJson(
          await RestConnection.find<BerryFirmness>(limit, skip));
}
