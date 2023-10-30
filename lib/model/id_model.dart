class IdModel {
  String? name;
  String? value;

  IdModel({
    this.name,
    this.value,
  });

  factory IdModel.fromJson(Map<String, dynamic> json) => IdModel(
    name: json["name"],
    value: json["value"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "value": value,
  };
}