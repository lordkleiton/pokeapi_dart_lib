import 'package:flutter_pokedex/models/common/named_api_resource.dart';

class HasLanguage {
  NamedApiResource language;

  HasLanguage.fromJson(Map<String, dynamic> json)
      : language = NamedApiResource.fromJson(json['language']);

  @override
  String toString() => '$runtimeType {language: $language}';
}
