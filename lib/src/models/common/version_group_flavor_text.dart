import 'package:flutter_pokedex/models/common/named_api_resource.dart';
import 'package:flutter_pokedex/models/utils/has_language.dart';

class VersionGroupFlavorText extends HasLanguage {
  String text;
  NamedApiResource versionGroup;

  VersionGroupFlavorText.fromJson(Map<String, dynamic> json)
      : text = json['text'],
        versionGroup = NamedApiResource.fromJson(json['version_group']),
        super.fromJson(json ?? {});

  static List<VersionGroupFlavorText> fromList(List<dynamic> list) =>
      list.map((e) => VersionGroupFlavorText.fromJson(e ?? {})).toList();

  @override
  toString() =>
      '$runtimeType {text: $text, versionGroup: $versionGroup, language: $language}';
}
