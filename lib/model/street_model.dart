class StreetModel {
  int? number;
  String? name;

  StreetModel({
    this.number,
    this.name,
  });

  factory StreetModel.fromJson(Map<String, dynamic> json) => StreetModel(
    number: json["number"],
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "number": number,
    "name": name,
  };
}