import 'package:ds_flow_builder/src/contact_flow/models/contact_model.dart';
import 'package:ds_flow_builder/src/contact_flow/notifiers/contact_notifier.dart';
import 'package:ds_flow_builder/src/contact_flow/pages/add_contact_page.dart';
import 'package:ds_flow_builder/src/contact_flow/pages/contact_list_page.dart';

import 'package:ds_flow_builder/src/contact_flow/pages/view_contact_page.dart';
import 'package:flow_builder/flow_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

List<Page> onGenerateContactPages(ContactState state, List<Page> pages) {
  return [
    ContactListPage.route(),
    if (state.newContact != null) AddContactPage.route(),
    if (state.selectedContact != null) ViewContactPage.route(),
  ];
}

class ContactFlow extends ConsumerWidget {
  static Route<ContactState> route() => MaterialPageRoute(
        builder: (BuildContext context) => ContactFlow(),
      );

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final contactState = watch(contactNotifier.state);

    return FlowBuilder<ContactState>(
      state: contactState,
      onGeneratePages: onGenerateContactPages,
    );
  }
}
