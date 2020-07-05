import 'package:flutter_pokedex/models/common/named_api_resource.dart';

class ContestComboDetail {
  List<NamedApiResource> useBefore;
  List<NamedApiResource> useAfter;

  ContestComboDetail.fromJson(Map<String, dynamic> json)
      : useBefore = NamedApiResource.fromList(json['use_before'] ?? []),
        useAfter = NamedApiResource.fromList(json['use_after'] ?? []);

  static List<ContestComboDetail> fromList(List<dynamic> list) =>
      list.map((e) => ContestComboDetail.fromJson(e ?? {})).toList();

  @override
  toString() => '$runtimeType {useBefore: $useBefore, useAfter: $useAfter}';
}
