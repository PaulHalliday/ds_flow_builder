import 'package:ds_flow_builder/contact_flow/notifiers/contact_notifier.dart';
import 'package:ds_flow_builder/contact_flow/widgets/contact_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddContactPage extends ConsumerWidget {
  static MaterialPage<AddContactPage> route() =>
      MaterialPage(child: AddContactPage());

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final contactNot = watch(kContactNotifier);

    return Scaffold(
      appBar: AppBar(
        title: Text("Add"),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            contactNot.addContact();
          },
          child: Icon(Icons.check)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ContactForm(),
      ),
    );
  }
}
