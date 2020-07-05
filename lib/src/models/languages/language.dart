import 'package:flutter_pokedex/models/common/name.dart';
import 'package:flutter_pokedex/models/common/named_api_resource_list.dart';
import 'package:flutter_pokedex/network/rest.dart';

class Language {
  int id;
  String name;
  bool official;
  String iso639;
  String iso3166;
  List<Name> names;

  Language.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        official = json['official'],
        iso639 = json['iso639'],
        iso3166 = json['iso3166'],
        names = Name.fromList(json['names'] ?? []);

  static Future<Language> get(String query) async =>
      Language.fromJson(await RestConnection.get<Language>(query));

  static Future<NamedApiResourceList> find(
          [int limit = 0, int skip = 0]) async =>
      NamedApiResourceList.fromJson(
          await RestConnection.find<Language>(limit, skip));

  @override
  toString() =>
      '$runtimeType {id: $id, name: $name, official: $official, iso639: $iso639, iso3166: $iso3166, names: $names}';
}
