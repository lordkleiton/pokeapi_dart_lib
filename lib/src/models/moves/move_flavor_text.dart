import 'package:flutter_pokedex/models/common/named_api_resource.dart';
import 'package:flutter_pokedex/models/utils/has_language.dart';

class MoveFlavorText extends HasLanguage {
  String flavorText;
  NamedApiResource versionGroup;

  MoveFlavorText.fromJson(Map<String, dynamic> json)
      : flavorText = json['flavor_text'],
        versionGroup = NamedApiResource.fromJson(json['version_group'] ?? {}),
        super.fromJson(json);

  static List<MoveFlavorText> fromList(List<dynamic> list) =>
      list.map((e) => MoveFlavorText.fromJson(e ?? {})).toList();

  @override
  toString() =>
      '$runtimeType {flavorText: $flavorText, versionGroup: $versionGroup, language: $language}';
}
