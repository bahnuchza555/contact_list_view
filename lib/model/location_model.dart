import 'package:contact_list_view/model/coordinates_model.dart';
import 'package:contact_list_view/model/street_model.dart';
import 'package:contact_list_view/model/time_zone_model.dart';

class LocationModel {
  StreetModel? street;
  String? city;
  String? state;
  String? country;
  String? postcode;
  CoordinatesModel? coordinates;
  TimezoneModel? timezone;

  LocationModel({
    this.street,
    this.city,
    this.state,
    this.country,
    this.postcode,
    this.coordinates,
    this.timezone,
  });

  factory LocationModel.fromJson(Map<String, dynamic> json) => LocationModel(
    street: json["street"] == null ? null : StreetModel.fromJson(json["street"]),
    city: json["city"],
    state: json["state"],
    country: json["country"],
    postcode: json["postcode"].toString(),
    coordinates: json["coordinates"] == null ? null : CoordinatesModel.fromJson(json["coordinates"]),
    timezone: json["timezone"] == null ? null : TimezoneModel.fromJson(json["timezone"]),
  );

  Map<String, dynamic> toJson() => {
    "street": street?.toJson(),
    "city": city,
    "state": state,
    "country": country,
    "postcode": postcode,
    "coordinates": coordinates?.toJson(),
    "timezone": timezone?.toJson(),
  };
}