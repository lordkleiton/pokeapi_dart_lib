import '../common/name.dart';
import '../common/named_api_resource_list.dart';
import '../locations/pal_park_encounter_species.dart';
import '../../network/rest.dart';

///Areas used for grouping Pokémon encounters in Pal Park. They're like habitats that are specific
/// to [Pal Park](https://bulbapedia.bulbagarden.net/wiki/Pal_Park).
class PalParkArea {
  int id;
  String name;
  List<Name> names;
  List<PalParkEncounterSpecies> pokemonEncounters;

  PalParkArea.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        names = Name.fromList(json['names'] ?? []),
        pokemonEncounters =
            PalParkEncounterSpecies.fromList(json['pokemon_encounters'] ?? []);

  static Future<PalParkArea> get(String query) async =>
      PalParkArea.fromJson(await RestConnection.get<PalParkArea>(query));

  static Future<NamedApiResourceList> find(
          [int limit = 0, int skip = 0]) async =>
      NamedApiResourceList.fromJson(
          await RestConnection.find<PalParkArea>(limit, skip));

  @override
  toString() =>
      '$runtimeType {id: $id, name: $name, names: $names, pokemonEncounters: $pokemonEncounters}';
}
