import 'package:flutter_pokedex/models/utils/has_language.dart';

class Genus extends HasLanguage {
  String genus;

  Genus.fromJson(Map<String, dynamic> json)
      : genus = json['genus'],
        super.fromJson(json);

  static List<Genus> fromList(List<dynamic> list) =>
      list.map((e) => Genus.fromJson(e ?? {})).toList();

  @override
  toString() => '$runtimeType {genus: $genus, language: $language}';
}
