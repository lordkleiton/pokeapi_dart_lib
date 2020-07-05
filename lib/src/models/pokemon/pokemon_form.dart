import 'package:flutter_pokedex/models/common/name.dart';
import 'package:flutter_pokedex/models/common/named_api_resource.dart';
import 'package:flutter_pokedex/models/common/named_api_resource_list.dart';
import 'package:flutter_pokedex/models/pokemon/pokemon_form_sprites.dart';
import 'package:flutter_pokedex/network/rest.dart';

class PokemonForm {
  int id;
  String name;
  int order;
  int formOrder;
  bool isDefault;
  bool isBattleOnly;
  bool isMega;
  String formName;
  NamedApiResource pokemon;
  PokemonFormSprites sprites;
  NamedApiResource versionGroup;
  List<Name> names;
  List<Name> formNames;

  PokemonForm.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        order = json['order'],
        formOrder = json['form_order'],
        isDefault = json['is_default'],
        isBattleOnly = json['is_battle_only'],
        isMega = json['is_mega'],
        formName = json['form_name'],
        pokemon = NamedApiResource.fromJson(json['pokemon'] ?? {}),
        sprites = PokemonFormSprites.fromJson(json['sprites'] ?? {}),
        versionGroup = NamedApiResource.fromJson(json['version_group'] ?? {}),
        names = Name.fromList(json['names'] ?? []),
        formNames = Name.fromList(json['form_names'] ?? []);

  static Future<PokemonForm> get(String query) async =>
      PokemonForm.fromJson(await RestConnection.get<PokemonForm>(query));

  static Future<NamedApiResourceList> find(
          [int limit = 0, int skip = 0]) async =>
      NamedApiResourceList.fromJson(
          await RestConnection.find<PokemonForm>(limit, skip));

  @override
  toString() =>
      '$runtimeType {id: $id, name: $name, order: $order, formOrder: $formOrder, isDefault: $isDefault, isBattleOnly: $isBattleOnly, isMega: $isMega, formName: $formName, pokemon: $pokemon, sprites: $sprites, versionGroup: $versionGroup, names: $names, formNames: $formNames}';
}
