import 'package:flutter_pokedex/models/moves/contest_combo_detail.dart';

class ContestComboSets {
  ContestComboDetail normal;
  ContestComboDetail supr;

  ContestComboSets.fromJson(Map<String, dynamic> json)
      : normal = ContestComboDetail.fromJson(json['normal'] ?? {}),
        supr = ContestComboDetail.fromJson(json['super'] ?? {});

  static List<ContestComboSets> fromList(List<dynamic> list) =>
      list.map((e) => ContestComboSets.fromJson(e ?? {})).toList();

  @override
  toString() => '$runtimeType {normal: $normal, supr: $supr}';
}
