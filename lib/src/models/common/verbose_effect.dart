import 'package:flutter_pokedex/models/utils/has_language.dart';

class VerboseEffect extends HasLanguage {
  String effect;
  String shortEffect;

  VerboseEffect.fromJson(Map<String, dynamic> json)
      : effect = json['effect'],
        shortEffect = json['short_effect'],
        super.fromJson(json ?? {});

  static List<VerboseEffect> fromList(List<dynamic> list) =>
      list.map((e) => VerboseEffect.fromJson(e ?? {})).toList();

  @override
  toString() =>
      '$runtimeType {effect: $effect, shortEffect: $shortEffect, language: $language}';
}
