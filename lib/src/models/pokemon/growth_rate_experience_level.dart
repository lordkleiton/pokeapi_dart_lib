class GrowthRateExperienceLevel {
  int level;
  int experience;

  GrowthRateExperienceLevel.fromJson(Map<String, dynamic> json)
      : level = json['level'],
        experience = json['experience'];

  static List<GrowthRateExperienceLevel> fromList(List<dynamic> list) =>
      list.map((e) => GrowthRateExperienceLevel.fromJson(e ?? {})).toList();

  @override
  toString() => '$runtimeType {level: $level, experience: $experience}';
}
