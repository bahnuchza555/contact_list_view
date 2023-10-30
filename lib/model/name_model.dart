class NameModel {
  String? title;
  String? first;
  String? last;

  NameModel({
    this.title,
    this.first,
    this.last,
  });

  factory NameModel.fromJson(Map<String, dynamic> json) => NameModel(
    title: json["title"],
    first: json["first"],
    last: json["last"],
  );

  Map<String, dynamic> toJson() => {
    "title": title,
    "first": first,
    "last": last,
  };
}