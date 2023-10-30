import 'package:contact_list_view/model/dob_model.dart';
import 'package:contact_list_view/model/id_model.dart';
import 'package:contact_list_view/model/location_model.dart';
import 'package:contact_list_view/model/login_model.dart';
import 'package:contact_list_view/model/name_model.dart';
import 'package:contact_list_view/model/picture_model.dart';

class ResultModel {
  String? gender;
  NameModel? name;
  LocationModel? location;
  String? email;
  LoginModel? login;
  DobModel? dob;
  DobModel? registered;
  String? phone;
  String? cell;
  IdModel? id;
  PictureModel? picture;
  String? nat;

  ResultModel({
    this.gender,
    this.name,
    this.location,
    this.email,
    this.login,
    this.dob,
    this.registered,
    this.phone,
    this.cell,
    this.id,
    this.picture,
    this.nat,
  });

  factory ResultModel.fromJson(Map<String, dynamic> json) => ResultModel(
    gender: json["gender"],
    name: json["name"] == null ? null : NameModel.fromJson(json["name"]),
    location: json["location"] == null ? null : LocationModel.fromJson(json["location"]),
    email: json["email"],
    login: json["login"] == null ? null : LoginModel.fromJson(json["login"]),
    dob: json["dob"] == null ? null : DobModel.fromJson(json["dob"]),
    registered: json["registered"] == null ? null : DobModel.fromJson(json["registered"]),
    phone: json["phone"],
    cell: json["cell"],
    id: json["id"] == null ? null : IdModel.fromJson(json["id"]),
    picture: json["picture"] == null ? null : PictureModel.fromJson(json["picture"]),
    nat: json["nat"],
  );

  Map<String, dynamic> toJson() => {
    "gender": gender,
    "name": name?.toJson(),
    "location": location?.toJson(),
    "email": email,
    "login": login?.toJson(),
    "dob": dob?.toJson(),
    "registered": registered?.toJson(),
    "phone": phone,
    "cell": cell,
    "id": id?.toJson(),
    "picture": picture?.toJson(),
    "nat": nat,
  };
}