class IntroScreenModel {
  late String backgroundImagePath;
  late String mainTitle;
  late String description;

  IntroScreenModel({
    required this.backgroundImagePath,
    required this.mainTitle,
    required this.description,
  });

  String get getBackgroundImagePath => backgroundImagePath;
  String get getmainTitle => mainTitle;
  String get getDescription => description;
}
