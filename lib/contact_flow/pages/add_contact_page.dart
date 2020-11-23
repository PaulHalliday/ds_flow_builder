import 'package:ds_flow_builder/contact_flow/models/contact_model.dart';
import 'package:ds_flow_builder/contact_flow/notifiers/contact_notifier.dart';
import 'package:ds_flow_builder/contact_flow/widgets/contact_form.dart';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddContactPage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final contactNot = watch(contactNotifier);
    final contactState = watch(contactNotifier.state);

    return Scaffold(
      appBar: AppBar(
        title: Text("Add"),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () => contactNot.addContact(), child: Icon(Icons.check)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ContactForm(),
      ),
    );
  }
}
