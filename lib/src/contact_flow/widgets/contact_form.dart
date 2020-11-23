import 'package:ds_flow_builder/src/contact_flow/notifiers/contact_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/all.dart';

class ContactForm extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final contact = watch(kContactNotifier);

    return Form(
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              labelText: "Full Name",
            ),
            onChanged: (String value) => contact.setName(value),
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: "Phone Number",
            ),
            onChanged: (String value) => contact.setPhoneNumber(value),
          ),
        ],
      ),
    );
  }
}
