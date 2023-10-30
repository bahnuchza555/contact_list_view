import 'dart:developer';

import 'package:contact_list_view/model/contact_list_model.dart';
import 'package:contact_list_view/repository/contact_list_repo.dart';
import 'package:flutter/material.dart';

class ContactListController extends ChangeNotifier {
  ContactListController(this.context, {this.contactList}) {
    _getContactListData();
  }

  List<ContactListModel>? contactList = [];
  final BuildContext context;

  _getContactListData() async {
    try {
      var temp = await ContactListRepository().getContactList();

      if (temp.results?.isNotEmpty == true) {
        contactList = temp.results?.map((e) {
          String name =
              '${e.name?.title}. ${e.name?.first} ${e.name?.last}';
          var value = ContactListModel(
            name: name,
            gender: e.gender,
            email: e.email,
            tel: e.phone,
            age: e.dob?.age.toString(),
            urlImage: e.picture?.thumbnail
          );

          return value;
        }).toList();

      }
    } catch (error) {
      log(error.toString());
    }
    notifyListeners();
  }
}

