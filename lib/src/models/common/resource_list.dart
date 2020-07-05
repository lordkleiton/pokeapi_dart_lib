class ResourceList {
  int count;
  String next;
  String previous;

  ResourceList.fromJson(Map<String, dynamic> json)
      : count = json['count'],
        next = json['next'],
        previous = json['previous'];

  static List<ResourceList> fromList(List<dynamic> list) =>
      list.map((e) => ResourceList.fromJson(e ?? {})).toList();

  @override
  String toString() =>
      '$runtimeType {count: $count, previous: $previous, next: $next}';
}
