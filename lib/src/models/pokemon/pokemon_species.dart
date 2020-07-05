import 'package:flutter_pokedex/models/common/api_resource.dart';
import 'package:flutter_pokedex/models/common/description.dart';
import 'package:flutter_pokedex/models/common/flavor_text.dart';
import 'package:flutter_pokedex/models/common/name.dart';
import 'package:flutter_pokedex/models/common/named_api_resource.dart';
import 'package:flutter_pokedex/models/common/named_api_resource_list.dart';
import 'package:flutter_pokedex/models/pokemon/pal_park_encounter_area.dart';
import 'package:flutter_pokedex/models/pokemon/pokemon_species_dex_entry.dart';
import 'package:flutter_pokedex/models/pokemon/pokemon_species_variety.dart';
import 'package:flutter_pokedex/network/rest.dart';

class PokemonSpecies {
  int id;
  String name;
  int order;
  int genderRate;
  int captureRate;
  int baseHappiness;
  bool isBaby;
  int hatchCounter;
  bool hasGenderDifferences;
  bool formsSwitchable;
  NamedApiResource growthRate;
  List<PokemonSpeciesDexEntry> pokedexNumbers;
  List<NamedApiResource> eggGroups;
  NamedApiResource color;
  NamedApiResource shape;
  NamedApiResource evolvesFromSpecies;
  ApiResource evolutionChain;
  NamedApiResource habitat;
  NamedApiResource generation;
  List<Name> names;
  List<PalParkEncounterArea> palParkEncounters;
  List<FlavorText> flavorTextEntries;
  List<Description> formDescriptions;
  List<PokemonSpeciesVariety> varieties;

  PokemonSpecies.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        order = json['order'],
        genderRate = json['gender_rate'],
        captureRate = json['capture_rate'],
        baseHappiness = json['base_happiness'],
        isBaby = json['is_baby'],
        hatchCounter = json['hatch_counter'],
        hasGenderDifferences = json['has_gender_differences'],
        formsSwitchable = json['forms_switchable'],
        growthRate = NamedApiResource.fromJson(json['growth_rate'] ?? {}),
        pokedexNumbers =
            PokemonSpeciesDexEntry.fromList(json['pokedex_numbers'] ?? []),
        eggGroups = NamedApiResource.fromList(json['egg_groups'] ?? []),
        color = NamedApiResource.fromJson(json['color'] ?? {}),
        shape = NamedApiResource.fromJson(json['shape'] ?? {}),
        evolvesFromSpecies =
            NamedApiResource.fromJson(json['evolves_froms_species'] ?? {}),
        evolutionChain = ApiResource.fromJson(json['evolution_chain'] ?? {}),
        habitat = NamedApiResource.fromJson(json['habitat'] ?? {}),
        generation = NamedApiResource.fromJson(json['generation'] ?? {}),
        names = Name.fromList(json['names'] ?? []),
        palParkEncounters =
            PalParkEncounterArea.fromList(json['pal_park_encounters'] ?? []),
        flavorTextEntries =
            FlavorText.fromList(json['flavor_text_entries'] ?? []),
        formDescriptions =
            Description.fromList(json['form_descriptions'] ?? []),
        varieties = PokemonSpeciesVariety.fromList(json['varieties'] ?? []);

  static Future<PokemonSpecies> get(String query) async =>
      PokemonSpecies.fromJson(await RestConnection.get<PokemonSpecies>(query));

  static Future<NamedApiResourceList> find(
          [int limit = 0, int skip = 0]) async =>
      NamedApiResourceList.fromJson(
          await RestConnection.find<PokemonSpecies>(limit, skip));

  @override
  toString() =>
      '$runtimeType {id: $id, name: $name , order: $order, genderRate: $genderRate, captureRate: $captureRate, baseHappiness: $baseHappiness, isBaby: $isBaby, hatchCounter: $hatchCounter, hasGenderDifferences: $hasGenderDifferences, formsSwitchable: $formsSwitchable, growthRate: $growthRate, pokedexNumbers: $pokedexNumbers, eggGroups: $eggGroups, color: $color, shape: $shape, evolvesFromSpecies: $evolvesFromSpecies, evolutionChain: $evolutionChain, habitat: $habitat, generation: $generation, names: $names, palParkEncounters: $palParkEncounters, flavorTextEntries: $flavorTextEntries, formDescriptions: $formDescriptions, varieties: $varieties}';
}
