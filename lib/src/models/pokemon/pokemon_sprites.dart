class PokemonSprites {
  String frontDefault;
  String frontShiny;
  String frontFemale;
  String frontFemaleShiny;
  String backDefault;
  String backShiny;
  String backFemale;
  String backShinyFemale;

  PokemonSprites.fromJson(Map<String, dynamic> json)
      : frontDefault = json['front_default'],
        frontShiny = json['front_shiny'],
        frontFemale = json['front_female'],
        frontFemaleShiny = json['front_female_shiny'],
        backDefault = json['back_default'],
        backShiny = json['back_shiny'],
        backFemale = json['back_female'],
        backShinyFemale = json['back_shiny_female'];

  @override
  toString() =>
      '$runtimeType {frontDefault: $frontDefault, frontShiny: $frontShiny, frontFemale: $frontFemale, frontFemaleShiny: $frontFemaleShiny, backDefault: $backDefault, backShiny: $backShiny, backFemale: $backFemale, backShinyFemale: $backShinyFemale}';
}
