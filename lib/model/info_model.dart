class InfoModel {
  String? seed;
  int? results;
  int? page;
  String? version;

  InfoModel({
    this.seed,
    this.results,
    this.page,
    this.version,
  });

  factory InfoModel.fromJson(Map<String, dynamic> json) => InfoModel(
    seed: json["seed"],
    results: json["results"],
    page: json["page"],
    version: json["version"],
  );

  Map<String, dynamic> toJson() => {
    "seed": seed,
    "results": results,
    "page": page,
    "version": version,
  };
}