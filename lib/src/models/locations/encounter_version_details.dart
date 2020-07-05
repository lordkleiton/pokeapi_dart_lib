import 'package:flutter_pokedex/models/common/named_api_resource.dart';

class EncounterVersionDetails {
  int rate;
  NamedApiResource version;

  EncounterVersionDetails.fromJson(Map<String, dynamic> json)
      : rate = json['rate'],
        version = NamedApiResource.fromJson(json['version'] ?? {});

  static List<EncounterVersionDetails> fromList(List<dynamic> list) =>
      list.map((e) => EncounterVersionDetails.fromJson(e ?? {})).toList();

  @override
  String toString() => '$runtimeType {rate: $rate, version: $version}';
}
