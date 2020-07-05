import 'package:flutter_pokedex/models/utils/has_language.dart';

class ContestName extends HasLanguage {
  String name;
  String color;

  ContestName.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        color = json['color'],
        super.fromJson(json ?? {});

  static List<ContestName> fromList(List<dynamic> list) =>
      list.map((e) => ContestName.fromJson(e)).toList();

  @override
  String toString() =>
      '$runtimeType {name: $name, color: $color, language: $language}';
}
