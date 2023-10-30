import 'package:contact_list_view/model/results_list_model.dart';
import 'package:contact_list_view/service/api_service.dart';
import 'dart:convert';

class ContactListRepository {
  final APIService _apiService = APIService();

  Future<ResultsModel> getContactList() async {
    dynamic response = await _apiService.getContactList(10);
    var res = ResultsModel.fromJson(response);
    return res;
  }
}