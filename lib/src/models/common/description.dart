import 'package:flutter_pokedex/models/utils/has_language.dart';

class Description extends HasLanguage {
  String description;

  Description.fromJson(Map<String, dynamic> json)
      : description = json['description'],
        super.fromJson(json ?? {});

  static List<Description> fromList(List<dynamic> list) =>
      list.map((e) => Description.fromJson(e ?? {})).toList();

  @override
  toString() => '$runtimeType {description: $description, language: $language}';
}
