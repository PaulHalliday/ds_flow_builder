import 'package:ds_flow_builder/src/contact_flow/notifiers/contact_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/all.dart';

final isContactFormValidProvider = StateProvider<bool>((ref) => false);

class ContactForm extends StatefulWidget {
  @override
  _ContactFormState createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (BuildContext context,
          T Function<T>(ProviderBase<Object, T>) watch, Widget child) {
        final contact = watch(contactNotifier);
        final isContactFormValid = watch(isContactFormValidProvider);
        return Form(
          key: _formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          onChanged: () =>
              isContactFormValid.state = _formKey.currentState.validate(),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Full Name",
                ),
                validator: (String value) =>
                    value.isEmpty ? "Name cannot be empty" : null,
                onChanged: (String value) => contact.setName(value),
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Phone Number",
                ),
                validator: (String value) =>
                    value.isEmpty ? "Phone Number cannot be empty" : null,
                onChanged: (String value) => contact.setPhoneNumber(value),
              ),
            ],
          ),
        );
      },
    );
  }
}
