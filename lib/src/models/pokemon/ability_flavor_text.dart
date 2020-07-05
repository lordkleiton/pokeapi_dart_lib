import 'package:flutter_pokedex/models/common/named_api_resource.dart';
import 'package:flutter_pokedex/models/utils/has_language.dart';

class AbilityFlavorText extends HasLanguage {
  String flavorText;
  NamedApiResource versionGroup;

  AbilityFlavorText.fromJson(Map<String, dynamic> json)
      : flavorText = json['flavor_text'],
        versionGroup = NamedApiResource.fromJson(json['version_group'] ?? {}),
        super.fromJson(json);

  static List<AbilityFlavorText> fromList(List<dynamic> list) =>
      list.map((e) => AbilityFlavorText.fromJson(e ?? {})).toList();

  @override
  toString() =>
      '$runtimeType {flavorText: $flavorText, versionGroup: $versionGroup, language: $language}';
}
