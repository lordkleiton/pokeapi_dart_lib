import 'package:flutter_pokedex/models/common/api_resource.dart';
import 'package:flutter_pokedex/models/common/machine_version_detail.dart';
import 'package:flutter_pokedex/models/common/name.dart';
import 'package:flutter_pokedex/models/common/named_api_resource.dart';
import 'package:flutter_pokedex/models/common/named_api_resource_list.dart';
import 'package:flutter_pokedex/models/common/verbose_effect.dart';
import 'package:flutter_pokedex/models/moves/contest_combo_sets.dart';
import 'package:flutter_pokedex/models/moves/move_flavor_text.dart';
import 'package:flutter_pokedex/models/moves/move_meta_data.dart';
import 'package:flutter_pokedex/models/moves/move_stat_change.dart';
import 'package:flutter_pokedex/models/moves/past_move_stat_values.dart';
import 'package:flutter_pokedex/models/pokemon/ability_effect_change.dart';
import 'package:flutter_pokedex/network/rest.dart';

class Move {
  int id;
  String name;
  int accuracy;
  int effectChance;
  int pp;
  int priority;
  int power;
  ContestComboSets contestCombos;
  NamedApiResource contestType;
  ApiResource contestEffect;
  NamedApiResource damageClass;
  List<VerboseEffect> effectEntries;
  List<AbilityEffectChange> effectChanges;
  List<MoveFlavorText> flavorTextEntries;
  NamedApiResource generation;
  List<MachineVersiondetail> machines;
  MoveMetaData meta;
  List<Name> names;
  List<PastMoveStatValues> pastValues;
  List<MoveStatChange> statChange;
  ApiResource superContestEffect;
  NamedApiResource target;
  NamedApiResource type;

  Move.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        accuracy = json['accuracy'],
        effectChance = json['effect_chance'],
        pp = json['pp'],
        priority = json['priority'],
        power = json['power'],
        contestCombos = ContestComboSets.fromJson(json['contest_combos'] ?? {}),
        contestType = NamedApiResource.fromJson(json['contest_type'] ?? {}),
        contestEffect = ApiResource.fromJson(json['contest_effect'] ?? {}),
        damageClass = NamedApiResource.fromJson(json['damage_class'] ?? {}),
        effectEntries = VerboseEffect.fromList(json['effect_entries'] ?? []),
        effectChanges =
            AbilityEffectChange.fromList(json['effect_changes'] ?? []),
        flavorTextEntries =
            MoveFlavorText.fromList(json['flavor_text_entries'] ?? []),
        generation = NamedApiResource.fromJson(json['generation'] ?? {}),
        machines = MachineVersiondetail.fromList(json['machines'] ?? []),
        meta = MoveMetaData.fromJson(json['meta'] ?? {}),
        names = Name.fromList(json['names'] ?? []),
        pastValues = PastMoveStatValues.fromList(json['past_values'] ?? []),
        statChange = MoveStatChange.fromList(json['stat_change'] ?? []),
        superContestEffect =
            ApiResource.fromJson(json['super_contest_effect'] ?? {}),
        target = NamedApiResource.fromJson(json['target'] ?? {}),
        type = NamedApiResource.fromJson(json['type'] ?? {});

  static Future<Move> get(String query) async =>
      Move.fromJson(await RestConnection.get<Move>(query));

  static Future<NamedApiResourceList> find(
          [int limit = 0, int skip = 0]) async =>
      NamedApiResourceList.fromJson(
          await RestConnection.find<Move>(limit, skip));

  @override
  toString() =>
      '$runtimeType {id: $id, name: $name, accuracy: $accuracy, effectChance: $effectChance, pp: $pp, priority: $priority, power: $power, contestCombos: $contestCombos, contestType: $contestType, contestEffect: $contestEffect, damageClass: $damageClass, effectEntries: $effectEntries, effectChanges: $effectChanges, flavorTextEntries: $flavorTextEntries, generation: $generation, machines: $machines, meta: $meta, names: $names, pastValues: $pastValues, statChange: $statChange, superContestEffect: $superContestEffect, target: $target, type: $type}';
}
