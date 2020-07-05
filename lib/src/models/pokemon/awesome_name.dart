import 'package:flutter_pokedex/models/utils/has_language.dart';

class AwesomeName extends HasLanguage {
  String awesomeName;

  AwesomeName.fromJson(Map<String, dynamic> json)
      : awesomeName = json['awesome_name'],
        super.fromJson(json);

  static List<AwesomeName> fromList(List<dynamic> list) =>
      list.map((e) => AwesomeName.fromJson(e ?? {})).toList();

  @override
  toString() => '$runtimeType {awesomeName: $awesomeName, language: $language}';
}
