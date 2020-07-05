class ItemSprites {
  String deflt;

  ItemSprites.fromJson(Map<String, dynamic> json) : deflt = json['default'];

  @override
  toString() => '$runtimeType {deflt: $deflt}';
}
