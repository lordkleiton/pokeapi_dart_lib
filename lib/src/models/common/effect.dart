import 'package:flutter_pokedex/models/utils/has_language.dart';

class Effect extends HasLanguage {
  String effect;

  Effect.fromJson(Map<String, dynamic> json)
      : effect = json['effect'],
        super.fromJson(json ?? {});

  static List<Effect> fromList(List<dynamic> list) =>
      list.map((e) => Effect.fromJson(e)).toList();

  @override
  toString() => '$runtimeType {effect: $effect, language: $language}';
}
