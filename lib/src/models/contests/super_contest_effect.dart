import '../common/api_resource_list.dart';
import '../common/flavor_text.dart';
import '../common/named_api_resource.dart';
import '../../network/rest.dart';

class SuperContestEffect {
  int id;
  int appeal;
  List<FlavorText> flavorTextEntries;
  List<NamedApiResource> moves;

  SuperContestEffect.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        appeal = json['appeal'],
        flavorTextEntries =
            FlavorText.fromList(json['flavor_text_entries'] ?? []),
        moves = NamedApiResource.fromList(json['moves'] ?? []);

  static Future<SuperContestEffect> get(String query) async =>
      SuperContestEffect.fromJson(
          await RestConnection.get<SuperContestEffect>(query));

  static Future<ApiResourceList> find([int limit = 0, int skip = 0]) async =>
      ApiResourceList.fromJson(
          await RestConnection.find<SuperContestEffect>(limit, skip));

  @override
  toString() =>
      '$runtimeType {id: $id, appeal: $appeal, flavorTextEntries: $flavorTextEntries, moves: $moves}';
}
