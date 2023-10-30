class CoordinatesModel {
  String? latitude;
  String? longitude;

  CoordinatesModel({
    this.latitude,
    this.longitude,
  });

  factory CoordinatesModel.fromJson(Map<String, dynamic> json) => CoordinatesModel(
    latitude: json["latitude"],
    longitude: json["longitude"],
  );

  Map<String, dynamic> toJson() => {
    "latitude": latitude,
    "longitude": longitude,
  };
}