class PokemonFormSprites {
  String frontDefault;
  String frontShiny;
  String backDefault;
  String backShiny;

  PokemonFormSprites.fromJson(Map<String, dynamic> json)
      : frontDefault = json['front_default'],
        frontShiny = json['front_shiny'],
        backDefault = json['back_default'],
        backShiny = json['back_shiny'];

  @override
  toString() =>
      '$runtimeType {frontDefault: $frontDefault, frontShiny: $frontShiny, backDefault: $backDefault, backShiny: $backShiny}';
}
