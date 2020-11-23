import 'package:ds_flow_builder/contact_flow/models/contact_model.dart';
import 'package:ds_flow_builder/contact_flow/notifiers/contact_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/all.dart';
import 'package:flow_builder/flow_builder.dart';

class ContactListPage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final contactNot = watch(contactNotifier);
    final contactState = watch(contactNotifier.state);

    return Scaffold(
      appBar: AppBar(
        title: Text("Contact List"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          contactNot.setNewContact();
          context.flow<ContactState>().update((contactState) => contactState);
        },
        child: Icon(Icons.add),
      ),
      body: Visibility(
        visible: contactState.contactList.length > 0,
        replacement: Center(
          child: Text("No contacts found."),
        ),
        child: ListView.builder(
          itemCount: contactState.contactList.length,
          itemBuilder: (BuildContext context, int index) => ListTile(
            title: Text(contactState.contactList[index].name),
            subtitle: Text(contactState.contactList[index].phoneNumber),
            onTap: () {
              print(contactState.newContact);
              contactNot.setSelectedContact(contactState.contactList[index]);
              context
                  .flow<ContactState>()
                  .update((contactState) => contactState);
            },
          ),
        ),
      ),
    );
  }
}
