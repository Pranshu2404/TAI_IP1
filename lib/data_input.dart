class RecipeModel {
  late String applabel;
  late String appimgUrl;
  late double appcalories;
  late String appurl;
  String? source;

  RecipeModel(
      {this.applabel = "LABEL",
      this.appcalories = 0.000,
      this.appimgUrl = "IMAGE",
      this.appurl = "URL",
      this.source = "SOURCE"});
  factory RecipeModel.fromMap(Map recipe) {
    return RecipeModel(
        applabel: recipe["label"],
        appcalories: recipe["calories"],
        appimgUrl: recipe["image"],
        appurl: recipe["url"],
        source: recipe["source"]);
  }
}
