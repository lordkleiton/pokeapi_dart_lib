import 'package:flutter_pokedex/models/common/api_resource.dart';
import 'package:flutter_pokedex/models/common/generation_game_index.dart';
import 'package:flutter_pokedex/models/common/machine_version_detail.dart';
import 'package:flutter_pokedex/models/common/name.dart';
import 'package:flutter_pokedex/models/common/named_api_resource.dart';
import 'package:flutter_pokedex/models/common/named_api_resource_list.dart';
import 'package:flutter_pokedex/models/common/verbose_effect.dart';
import 'package:flutter_pokedex/models/common/version_group_flavor_text.dart';
import 'package:flutter_pokedex/models/items/item_holder_pokemon.dart';
import 'package:flutter_pokedex/models/items/item_sprites.dart';
import 'package:flutter_pokedex/network/rest.dart';

class Item {
  int id;
  String name;
  int cost;
  int flingPower;
  NamedApiResource flingEffect;
  List<NamedApiResource> attributes;
  NamedApiResource category;
  List<VerboseEffect> effectEntries;
  List<VersionGroupFlavorText> flavorTextEntries;
  List<GenerationGameIndex> gameIndices;
  List<Name> names;
  ItemSprites sprites;
  List<ItemHolderPokemon> heldByPokemon;
  ApiResource babyTriggerFor;
  List<MachineVersiondetail> machines;

  Item.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        cost = json['cost'],
        flingPower = json['fling_power'],
        flingEffect = NamedApiResource.fromJson(json['fling_effect'] ?? {}),
        attributes = NamedApiResource.fromList(json['attributes'] ?? []),
        category = NamedApiResource.fromJson(json['category'] ?? {}),
        effectEntries = VerboseEffect.fromList(json['effect_entries'] ?? []),
        flavorTextEntries =
            VersionGroupFlavorText.fromList(json['flavor_text_entries'] ?? []),
        gameIndices = GenerationGameIndex.fromList(json['game_indices'] ?? []),
        names = Name.fromList(json['names'] ?? []),
        sprites = ItemSprites.fromJson(json['sprites'] ?? {}),
        heldByPokemon =
            ItemHolderPokemon.fromList(json['held_by_pokemon'] ?? []),
        babyTriggerFor = ApiResource.fromJson(json['baby_trigger_for'] ?? {}),
        machines = MachineVersiondetail.fromList(json['machines'] ?? []);

  static Future<Item> get(String query) async =>
      Item.fromJson(await RestConnection.get<Item>(query));

  static Future<NamedApiResourceList> find(
          [int limit = 0, int skip = 0]) async =>
      NamedApiResourceList.fromJson(
          await RestConnection.find<Item>(limit, skip));

  @override
  toString() =>
      '$runtimeType {id: $id, name: $name, cost: $cost, flingPower: $flingPower, flingEffect: $flingEffect, attributes: $attributes, category: $category, effectEntries: $effectEntries, flavorTextEntries: $flavorTextEntries, gameIndices: $gameIndices, names: $names, sprites: $sprites, heldByPokemon: $heldByPokemon, babyTriggerFor: $babyTriggerFor, machines: $machines}';
}
