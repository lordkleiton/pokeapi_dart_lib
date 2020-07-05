import '../common/api_resource.dart';
import '../common/named_api_resource.dart';

class MachineVersiondetail {
  ApiResource machine;
  NamedApiResource versionGroup;

  MachineVersiondetail.fromJson(Map<String, dynamic> json)
      : machine = ApiResource.fromJson(json['machine']),
        versionGroup = NamedApiResource.fromJson(json['version_group']);

  static List<MachineVersiondetail> fromList(List<dynamic> list) =>
      list.map((e) => MachineVersiondetail.fromJson(e ?? {})).toList();

  @override
  toString() => '$runtimeType {machine: $machine, versionGroup: $versionGroup}';
}
