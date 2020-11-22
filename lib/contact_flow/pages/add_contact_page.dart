import 'package:ds_flow_builder/contact_flow/models/contact_model.dart';
import 'package:ds_flow_builder/contact_flow/notifiers/contact_notifier.dart';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddContactPage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final contactNot = watch(contactNotifier);

    return Scaffold(
      appBar: AppBar(
        title: Text("Add"),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () => contactNot
              .addContact(Contact(name: "Paul", phoneNumber: "0293283892")),
          child: Icon(Icons.check)),
      body: Column(
        children: [Text("Hello")],
      ),
    );
  }
}
