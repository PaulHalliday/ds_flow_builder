import 'package:ds_flow_builder/src/contact_flow/models/contact_model.dart';
import 'package:ds_flow_builder/src/contact_flow/notifiers/contact_notifier.dart';
import 'package:flow_builder/flow_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/all.dart';

class ContactListPage extends ConsumerWidget {
  static MaterialPage<ContactListPage> route() =>
      MaterialPage(child: ContactListPage());

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final contact = watch(contactNotifier);
    final contactState = watch(contactNotifier.state);

    return Scaffold(
      appBar: AppBar(
        title: Text("Contact List"),
        actions: [
          IconButton(
            icon: Icon(Icons.check),
            onPressed: () {
              contact.resetContactState();
              context.flow<ContactState>().complete((_) => contactState);
            },
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => contact.setNewContact(),
        child: Icon(Icons.add),
      ),
      body: Visibility(
        visible: contactState.contactList.length > 0,
        replacement: Center(
          child: const Text("No contacts found."),
        ),
        child: ListView.builder(
          itemCount: contactState.contactList.length,
          itemBuilder: (BuildContext context, int index) => ListTile(
            title: Text(contactState.contactList[index].name),
            subtitle: Text(contactState.contactList[index].phoneNumber),
            onTap: () =>
                contact.setSelectedContact(contactState.contactList[index]),
          ),
        ),
      ),
    );
  }
}
