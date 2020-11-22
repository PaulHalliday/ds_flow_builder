import 'package:ds_flow_builder/contact_flow/models/contact_model.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

final StateNotifierProvider<ContactStateNotifier> contactNotifier =
    StateNotifierProvider(
  (ref) => ContactStateNotifier(),
);

class ContactStateNotifier extends StateNotifier<ContactState> {
  ContactStateNotifier([ContactState state]) : super(ContactState());

  addContact(Contact contact) => state = state
      .copyWith(contactList: [...state.contactList, contact], newContact: null);

  setNewContact() => state = state.copyWith(newContact: Contact());

  setName(String name) =>
      state = state.copyWith(newContact: state.newContact.copyWith(name: name));
  setPhoneNumber(String phoneNumber) => state = state.copyWith(
      newContact: state.newContact.copyWith(phoneNumber: phoneNumber));
}
