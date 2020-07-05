import 'package:flutter_pokedex/models/common/name.dart';
import 'package:flutter_pokedex/models/common/named_api_resource.dart';
import 'package:flutter_pokedex/models/common/named_api_resource_list.dart';
import 'package:flutter_pokedex/network/rest.dart';

class MoveAilment {
  int id;
  String name;
  List<NamedApiResource> moves;
  List<Name> names;

  MoveAilment.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        moves = NamedApiResource.fromList(json['moves'] ?? []),
        names = Name.fromList(json['names'] ?? []);

  static Future<MoveAilment> get(String query) async =>
      MoveAilment.fromJson(await RestConnection.get<MoveAilment>(query));

  static Future<NamedApiResourceList> find(
          [int limit = 0, int skip = 0]) async =>
      NamedApiResourceList.fromJson(
          await RestConnection.find<MoveAilment>(limit, skip));

  @override
  toString() =>
      '$runtimeType {id: $id, name: $name, moves: $moves, names: $names}';
}
