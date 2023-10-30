class PictureModel {
  String? large;
  String? medium;
  String? thumbnail;

  PictureModel({
    this.large,
    this.medium,
    this.thumbnail,
  });

  factory PictureModel.fromJson(Map<String, dynamic> json) => PictureModel(
    large: json["large"],
    medium: json["medium"],
    thumbnail: json["thumbnail"],
  );

  Map<String, dynamic> toJson() => {
    "large": large,
    "medium": medium,
    "thumbnail": thumbnail,
  };
}