import 'package:ds_flow_builder/src/contact_flow/notifiers/contact_notifier.dart';
import 'package:ds_flow_builder/src/contact_flow/widgets/contact_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddContactPage extends ConsumerWidget {
  static MaterialPage<AddContactPage> route() =>
      MaterialPage(child: AddContactPage());

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final contact = watch(contactNotifier);
    final isContactFormValid = watch(isContactFormValidProvider);

    return WillPopScope(
      onWillPop: () async {
        contact.resetContactAddViewState();
        isContactFormValid.state = false;

        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("Add Contact"),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () async {
              if (isContactFormValid.state) {
                isContactFormValid.state = false;
                contact.addContact();
              } else {
                await showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text("Form Not Valid"),
                    content: Text(
                        "Can't add a new Contact as the form is not valid"),
                  ),
                );
              }
            },
            child: Icon(Icons.check)),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ContactForm(),
        ),
      ),
    );
  }
}
