class IconModel {
  String iconImagePath;
  String iconText;
  // ignore: prefer_typing_uninitialized_variables
  var route;

  IconModel({
    required this.iconImagePath,
    required this.iconText,
    this.route,
  });
}
