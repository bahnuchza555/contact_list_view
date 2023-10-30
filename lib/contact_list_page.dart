import 'package:contact_list_view/controller/contact_list_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ContactListPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ContactListPage();
}

class _ContactListPage extends State<ContactListPage> {
  ContactListController? contactListController;

  @override
  void initState() {
    super.initState();
    contactListController = ContactListController(context);
    setState(() {});
  }

  @override
  void dispose() {
    super.dispose();
    contactListController?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ContactList'),
        backgroundColor: Colors.blueAccent,
      ),
      body: SafeArea(
          child: ChangeNotifierProvider.value(
        value: contactListController,
        child: Consumer<ContactListController>(builder: (context, con, _) {
          var contacts = con.contactList;
          return ListView.builder(
              shrinkWrap: true,
              primary: false,
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
              itemCount: contacts?.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        contacts?[index].urlImage != null ?
                        Image.network(contacts?[index].urlImage ?? '') :
                        const CircularProgressIndicator(
                          color: Colors.blueAccent,
                        ),
                        const SizedBox(width: 10.0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('${contacts?[index].name}'),
                            Row(
                              children: [
                                const Text('Gender :'),
                                const SizedBox(width: 5.0),
                                Text('${contacts?[index].gender}'),
                                const SizedBox(width: 16.0),
                                const Text('Age :'),
                                const SizedBox(width: 5.0),
                                Text('${contacts?[index].age}')
                              ],
                            ),
                            Text('${contacts?[index].email}'),
                            Text('${contacts?[index].tel}'),
                          ],
                        ),
                      ],
                    ),
                    const Divider()
                  ],
                );
              });
        }),
      )),
    );
  }
}
