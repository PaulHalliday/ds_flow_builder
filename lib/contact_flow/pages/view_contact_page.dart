import 'package:ds_flow_builder/contact_flow/notifiers/contact_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/all.dart';

class ViewContactPage extends ConsumerWidget {
  static MaterialPage<ViewContactPage> route() =>
      MaterialPage(child: ViewContactPage());

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final contactState = watch(contactNotifier.state);

    return Scaffold(
      appBar: AppBar(
        title: Text(contactState.selectedContact.name),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              contactState.selectedContact.name,
              style: Theme.of(context).textTheme.headline6,
            ),
            Text(contactState.selectedContact.phoneNumber),
          ],
        ),
      ),
    );
  }
}
