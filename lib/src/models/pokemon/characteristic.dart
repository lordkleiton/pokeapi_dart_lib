import '../common/api_resource_list.dart';
import '../common/description.dart';
import '../common/named_api_resource.dart';
import '../../network/rest.dart';

class Characteristic {
  int id;
  int geneModulo;
  List<int> possibleValues;
  NamedApiResource highestStat;
  List<Description> descriptions;

  Characteristic.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        geneModulo = json['gene_modulo'],
        possibleValues = List<int>.from(json['possible_values'] ?? []),
        highestStat = NamedApiResource.fromJson(json['highest_stat'] ?? {}),
        descriptions = Description.fromList(json['descriptions'] ?? []);

  static Future<Characteristic> get(String query) async =>
      Characteristic.fromJson(await RestConnection.get<Characteristic>(query));

  static Future<ApiResourceList> find([int limit = 0, int skip = 0]) async =>
      ApiResourceList.fromJson(
          await RestConnection.find<Characteristic>(limit, skip));

  @override
  toString() =>
      '$runtimeType {id: $id, geneModulo: $geneModulo, possibleValues: $possibleValues, highestStat; $highestStat, descriptions: $descriptions}';
}
