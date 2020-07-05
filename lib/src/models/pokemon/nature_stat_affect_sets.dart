import 'package:flutter_pokedex/models/common/named_api_resource.dart';

class NatureStatAffectSets {
  List<NamedApiResource> increase;
  List<NamedApiResource> decrease;

  NatureStatAffectSets.fromJson(Map<String, dynamic> json)
      : increase = NamedApiResource.fromList(json['increase'] ?? []),
        decrease = NamedApiResource.fromList(json['decrease'] ?? []);

  @override
  toString() => '$runtimeType {increase: $increase, decrease: $decrease}';
}
