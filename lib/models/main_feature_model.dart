class MainFeatureModel {
  late String backgroundImagePath;
  late String mainTitle;
  late String description;
  late String dashBoardCardName;

  MainFeatureModel({
    required this.backgroundImagePath,
    required this.mainTitle,
    required this.description,
    required this.dashBoardCardName,
  });

  String get getBackgroundImagePath => backgroundImagePath;
  String get getmainTitle => mainTitle;
  String get getDescription => description;
}
