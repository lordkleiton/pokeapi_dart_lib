import 'package:flutter_pokedex/models/common/named_api_resource.dart';
import 'package:flutter_pokedex/models/utils/has_language.dart';

class FlavorText extends HasLanguage {
  String flavorText;
  NamedApiResource version;

  FlavorText.fromJson(Map<String, dynamic> json)
      : flavorText = json['flavor_text'],
        version = NamedApiResource.fromJson(json['version'] ?? {}),
        super.fromJson(json);

  static List<FlavorText> fromList(List<dynamic> list) =>
      list.map((e) => FlavorText.fromJson(e)).toList();

  @override
  toString() =>
      '$runtimeType {flavorText: $flavorText, version: $version, language: $language}';
}
