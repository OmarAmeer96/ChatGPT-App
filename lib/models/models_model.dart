class ModelsModel {
  final String id;
  final int created;
  final String root;

  ModelsModel({
    required this.id,
    required this.root,
    required this.created,
  });

  factory ModelsModel.fromjson(Map<String, dynamic> json) => ModelsModel(
        id: json["id"],
        root: json["root"],
        created: json["created"],
      );

  static List<ModelsModel> modelsFromSnaoshot(List modelSnapShot) {
    return modelSnapShot.map((data) => ModelsModel.fromjson(data)).toList();
  }
}
