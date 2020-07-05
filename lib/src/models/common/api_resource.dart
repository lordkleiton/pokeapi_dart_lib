class ApiResource {
  String url;

  ApiResource.fromJson(Map<String, dynamic> json) : url = json['url'];

  static List<ApiResource> fromList(List<dynamic> list) =>
      list.map((e) => ApiResource.fromJson(e ?? {})).toList();

  @override
  String toString() => '$runtimeType {url: $url}';
}
