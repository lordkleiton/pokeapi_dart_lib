import '../common/api_resource_list.dart';
import '../common/effect.dart';
import '../common/flavor_text.dart';
import '../../network/rest.dart';

///Contest effects refer to the effects of moves when used in contests.
class ContestEffect {
  int id;
  int appeal;
  int jam;
  List<Effect> effectEntries;
  List<FlavorText> flavorTextEntries;

  ContestEffect.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        appeal = json['appeal'],
        jam = json['jam'],
        effectEntries = Effect.fromList(json['effect_entries'] ?? []),
        flavorTextEntries =
            FlavorText.fromList(json['flavor_text_entries'] ?? []);

  static Future<ContestEffect> get(String query) async =>
      ContestEffect.fromJson(await RestConnection.get<ContestEffect>(query));

  static Future<ApiResourceList> find([int limit = 0, int skip = 0]) async =>
      ApiResourceList.fromJson(
          await RestConnection.find<ContestEffect>(limit, skip));

  @override
  toString() =>
      '$runtimeType {id: $id, appeal: $appeal, jam: $jam, effectEntries: $effectEntries, flavorTextEntries: $flavorTextEntries}';
}
