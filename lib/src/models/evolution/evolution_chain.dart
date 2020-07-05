import 'package:flutter_pokedex/models/common/api_resource_list.dart';
import 'package:flutter_pokedex/models/common/named_api_resource.dart';
import 'package:flutter_pokedex/models/evolution/chain_link.dart';
import 'package:flutter_pokedex/network/rest.dart';

class EvolutionChain {
  int id;
  NamedApiResource babyTriggerItem;
  ChainLink chain;

  EvolutionChain.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        babyTriggerItem =
            NamedApiResource.fromJson(json['baby_trigger_item'] ?? {}),
        chain = ChainLink.fromJson(json['chain']);

  static Future<EvolutionChain> get(String query) async =>
      EvolutionChain.fromJson(await RestConnection.get<EvolutionChain>(query));

  static Future<ApiResourceList> find([int limit = 0, int skip = 0]) async =>
      ApiResourceList.fromJson(
          await RestConnection.find<EvolutionChain>(limit, skip));

  @override
  toString() =>
      '$runtimeType {id: $id, babyTriggerItem: $babyTriggerItem, chain: $chain}';
}
