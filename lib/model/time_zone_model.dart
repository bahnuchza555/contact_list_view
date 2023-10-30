class TimezoneModel {
  String? offset;
  String? description;

  TimezoneModel({
    this.offset,
    this.description,
  });

  factory TimezoneModel.fromJson(Map<String, dynamic> json) => TimezoneModel(
    offset: json["offset"],
    description: json["description"],
  );

  Map<String, dynamic> toJson() => {
    "offset": offset,
    "description": description,
  };
}