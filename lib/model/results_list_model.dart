import 'dart:convert';
import 'package:contact_list_view/model/result_detail_model.dart';
import 'package:contact_list_view/model/info_model.dart';

ResultsModel resultsModelFromJson(String str) => ResultsModel.fromJson(json.decode(str));

String resultsModelToJson(ResultsModel data) => json.encode(data.toJson());

class ResultsModel {
  List<ResultModel>? results;
  InfoModel? info;

  ResultsModel({
    this.results,
    this.info,
  });

  factory ResultsModel.fromJson(Map<String, dynamic> json) => ResultsModel(
    results: json["results"] == null ? [] : List<ResultModel>.from(json["results"]!.map((x) => ResultModel.fromJson(x))),
    info: json["info"] == null ? null : InfoModel.fromJson(json["info"]),
  );

  Map<String, dynamic> toJson() => {
    "results": results == null ? [] : List<dynamic>.from(results!.map((x) => x.toJson())),
    "info": info?.toJson(),
  };
}
