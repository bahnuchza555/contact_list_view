class DobModel {
  DateTime? date;
  int? age;

  DobModel({
    this.date,
    this.age,
  });

  factory DobModel.fromJson(Map<String, dynamic> json) => DobModel(
    date: json["date"] == null ? null : DateTime.parse(json["date"]),
    age: json["age"],
  );

  Map<String, dynamic> toJson() => {
    "date": date?.toIso8601String(),
    "age": age,
  };
}