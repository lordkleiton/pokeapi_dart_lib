import 'package:flutter_pokedex/models/common/named_api_resource.dart';

class TypeRelations {
  List<NamedApiResource> noDamageTo;
  List<NamedApiResource> halfDamageTo;
  List<NamedApiResource> doubleDamageTo;
  List<NamedApiResource> noDamageFrom;
  List<NamedApiResource> halfDamageFrom;
  List<NamedApiResource> doubleDamageFrom;

  TypeRelations.fromJson(Map<String, dynamic> json)
      : noDamageTo = NamedApiResource.fromList(json['no_damage_to'] ?? []),
        halfDamageTo = NamedApiResource.fromList(json['half_damage_to'] ?? []),
        doubleDamageTo =
            NamedApiResource.fromList(json['double_damage_to'] ?? []),
        noDamageFrom = NamedApiResource.fromList(json['no_damage_from'] ?? []),
        halfDamageFrom =
            NamedApiResource.fromList(json['half_damage_from'] ?? []),
        doubleDamageFrom =
            NamedApiResource.fromList(json['double_damage_from'] ?? []);

  @override
  toString() =>
      '$runtimeType {noDamageTo: $noDamageTo, halfDamageTo: $halfDamageTo, doubleDamageTo: $doubleDamageTo, noDamageFrom: $noDamageFrom, halfDamageFrom: $halfDamageFrom, doubleDamageFrom: $doubleDamageFrom}';
}
