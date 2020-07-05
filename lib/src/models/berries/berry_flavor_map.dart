import 'package:flutter_pokedex/models/common/named_api_resource.dart';

class BerryFlavorMap {
  int potency;
  NamedApiResource flavor;

  BerryFlavorMap.fromJson(Map<String, dynamic> json)
      : potency = json['potency'],
        flavor = NamedApiResource.fromJson(json['flavor']);

  @override
  String toString() => '$runtimeType {potency: $potency, flavor: $flavor}';
}
