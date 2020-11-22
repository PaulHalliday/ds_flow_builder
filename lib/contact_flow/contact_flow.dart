import 'package:ds_flow_builder/contact_flow/models/contact_model.dart';
import 'package:ds_flow_builder/contact_flow/notifiers/contact_notifier.dart';
import 'package:ds_flow_builder/contact_flow/pages/add_contact_page.dart';
import 'package:ds_flow_builder/contact_flow/pages/contact_list_page.dart';
import 'package:flow_builder/flow_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

List<Page> onGenerateContactPages(ContactState state, List<Page> pages) {
  return [
    MaterialPage(child: ContactListPage()),
    if (state.newContact != null) MaterialPage(child: AddContactPage()),
  ];
}

class ContactFlow extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final contact = watch(contactNotifier.state);

    return FlowBuilder<ContactState>(
        state: contact, onGeneratePages: onGenerateContactPages);
  }
}
