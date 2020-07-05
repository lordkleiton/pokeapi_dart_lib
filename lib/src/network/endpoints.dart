import 'package:flutter_pokedex/models/berries/berry.dart';
import 'package:flutter_pokedex/models/berries/berry_firmness.dart';
import 'package:flutter_pokedex/models/berries/berry_flavor.dart';
import 'package:flutter_pokedex/models/contests/contest_effect.dart';
import 'package:flutter_pokedex/models/contests/contest_type.dart';
import 'package:flutter_pokedex/models/contests/super_contest_effect.dart';
import 'package:flutter_pokedex/models/encounters/encounter_condition_value.dart';
import 'package:flutter_pokedex/models/encounters/encounter_condition.dart';
import 'package:flutter_pokedex/models/encounters/encounter_method.dart';
import 'package:flutter_pokedex/models/evolution/evolution_chain.dart';
import 'package:flutter_pokedex/models/evolution/evolution_trigger.dart';
import 'package:flutter_pokedex/models/games/generation.dart';
import 'package:flutter_pokedex/models/games/pokedex.dart';
import 'package:flutter_pokedex/models/games/version.dart';
import 'package:flutter_pokedex/models/games/version_group.dart';
import 'package:flutter_pokedex/models/items/item.dart';
import 'package:flutter_pokedex/models/items/item_attribute.dart';
import 'package:flutter_pokedex/models/items/item_category.dart';
import 'package:flutter_pokedex/models/items/item_fling_effect.dart';
import 'package:flutter_pokedex/models/items/item_pocket.dart';
import 'package:flutter_pokedex/models/languages/language.dart';
import 'package:flutter_pokedex/models/locations/location.dart';
import 'package:flutter_pokedex/models/locations/location_area.dart';
import 'package:flutter_pokedex/models/locations/pal_park_area.dart';
import 'package:flutter_pokedex/models/locations/region.dart';
import 'package:flutter_pokedex/models/machines/machines.dart';
import 'package:flutter_pokedex/models/moves/move.dart';
import 'package:flutter_pokedex/models/moves/move_ailment.dart';
import 'package:flutter_pokedex/models/moves/move_battle_style.dart';
import 'package:flutter_pokedex/models/moves/move_category.dart';
import 'package:flutter_pokedex/models/moves/move_damage_class.dart';
import 'package:flutter_pokedex/models/moves/move_learn_method.dart';
import 'package:flutter_pokedex/models/moves/move_target.dart';
import 'package:flutter_pokedex/models/pokemon/ability.dart';
import 'package:flutter_pokedex/models/pokemon/characteristic.dart';
import 'package:flutter_pokedex/models/pokemon/egg_group.dart';
import 'package:flutter_pokedex/models/pokemon/gender.dart';
import 'package:flutter_pokedex/models/pokemon/growth_rate.dart';
import 'package:flutter_pokedex/models/pokemon/nature.dart';
import 'package:flutter_pokedex/models/pokemon/pokeathlon_stat.dart';
import 'package:flutter_pokedex/models/pokemon/pokemon.dart';
import 'package:flutter_pokedex/models/pokemon/pokemon_color.dart';
import 'package:flutter_pokedex/models/pokemon/pokemon_form.dart';
import 'package:flutter_pokedex/models/pokemon/pokemon_habitat.dart';
import 'package:flutter_pokedex/models/pokemon/pokemon_shape.dart';
import 'package:flutter_pokedex/models/pokemon/pokemon_species.dart';
import 'package:flutter_pokedex/models/pokemon/stat.dart';

/// endpoints da pokeapi
abstract class Endpoints {
  // berries
  static const String _berry = 'berry';
  static const String _berry_firmness = 'berry-firmness';
  static const String _berry_flavor = 'berry-flavor';

  // contests
  static const String _contest_type = 'contest-type';
  static const String _contest_effect = 'contest-effect';
  static const String _super_contest_effect = 'super-contest-effect';

  // encounters
  static const String _encounter_method = 'encounter-method';
  static const String _encounter_condition = 'encounter-condition';
  static const String _encounter_condition_value = 'encounter-condition-value';

  // evolution
  static const String _evolution_chain = 'evolution-chain';
  static const String _evolution_trigger = 'evolution-trigger';

  // generations
  static const String _generation = 'generation';
  static const String _pokedex = 'pokedex';
  static const String _version = 'version';
  static const String _version_group = 'version-group';

  // items
  static const String _item = 'item';
  static const String _item_attribute = 'item-attribute';
  static const String _item_category = 'item-category';
  static const String _item_fling_effect = 'item-fling-effect';
  static const String _item_pocket = 'item-pocket';

  // locations
  static const String _location = 'location';
  static const String _location_area = 'location-area';
  static const String _pal_park_area = 'pal-park-area';
  static const String _region = 'region';

  // machines
  static const String _machine = 'machine';

  // moves
  static const String _move = 'move';
  static const String _move_ailment = 'move-ailment';
  static const String _move_battle_style = 'move-battle-style';
  static const String _move_category = 'move-category';
  static const String _move_damage_class = 'move-damage-class';
  static const String _move_learn_method = 'move-learn-method';
  static const String _move_target = 'move-target';

  // pokemon
  static const String _ability = 'ability';
  static const String _characteristic = 'characteristic';
  static const String _egg_group = 'egg-group';
  static const String _gender = 'gender';
  static const String _growth_rate = 'growth-rate';
  static const String _nature = 'nature';
  static const String _pokeathlon_stat = 'pokeathlon-stat';
  static const String _pokemon = 'pokemon';
  static const String _pokemon_color = 'pokemon-color';
  static const String _pokemon_form = 'pokemon-form';
  static const String _pokemon_habitat = 'pokemon-habitat';
  static const String _pokemon_shape = 'pokemon-shape';
  static const String _pokemon_species = 'pokemon-species';
  static const String _stat = 'stat';
  static const String _type = 'type';

  //language
  static const String _language = 'language';

  // retorna o endpoint correto baseado no tipo
  static String getEndpoint<T>() {
    if (T == Berry) return _berry;
    if (T == BerryFirmness) return _berry_firmness;
    if (T == BerryFlavor) return _berry_flavor;
    if (T == ContestType) return _contest_type;
    if (T == ContestEffect) return _contest_effect;
    if (T == SuperContestEffect) return _super_contest_effect;
    if (T == EncounterMethod) return _encounter_method;
    if (T == EncounterCondition) return _encounter_condition;
    if (T == EncounterConditionValue) return _encounter_condition_value;
    if (T == EvolutionChain) return _evolution_chain;
    if (T == EvolutionTrigger) return _evolution_trigger;
    if (T == Generation) return _generation;
    if (T == Pokedex) return _pokedex;
    if (T == Version) return _version;
    if (T == VersionGroup) return _version_group;
    if (T == Item) return _item;
    if (T == ItemAttribute) return _item_attribute;
    if (T == ItemCategory) return _item_category;
    if (T == ItemFlingEffect) return _item_fling_effect;
    if (T == ItemPocket) return _item_pocket;
    if (T == Location) return _location;
    if (T == LocationArea) return _location_area;
    if (T == PalParkArea) return _pal_park_area;
    if (T == Region) return _region;
    if (T == Machine) return _machine;
    if (T == Move) return _move;
    if (T == MoveAilment) return _move_ailment;
    if (T == MoveBattleStyle) return _move_battle_style;
    if (T == MoveCategory) return _move_category;
    if (T == MoveDamageClass) return _move_damage_class;
    if (T == MoveLearnMethod) return _move_learn_method;
    if (T == MoveTarget) return _move_target;
    if (T == Ability) return _ability;
    if (T == Characteristic) return _characteristic;
    if (T == EggGroup) return _egg_group;
    if (T == Gender) return _gender;
    if (T == GrowthRate) return _growth_rate;
    if (T == Nature) return _nature;
    if (T == PokeathlonStat) return _pokeathlon_stat;
    if (T == Pokemon) return _pokemon;
    if (T == PokemonColor) return _pokemon_color;
    if (T == PokemonForm) return _pokemon_form;
    if (T == PokemonHabitat) return _pokemon_habitat;
    if (T == PokemonShape) return _pokemon_shape;
    if (T == PokemonSpecies) return _pokemon_species;
    if (T == Stat) return _stat;
    if (T == Type) return _type;
    if (T == Language) return _language;

    return null;
  }
}
