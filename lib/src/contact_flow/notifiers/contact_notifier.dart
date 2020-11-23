import 'package:ds_flow_builder/src/contact_flow/models/contact_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final contactNotifier = StateNotifierProvider(
  (ref) => ContactStateNotifier(),
);

class ContactStateNotifier extends StateNotifier<ContactState> {
  ContactStateNotifier([ContactState state]) : super(ContactState());

  void addContact() {
    state = state.copyWith(
      contactList: [...state.contactList, state.newContact],
    );

    resetContactAddViewState();
  }

  void setNewContact() => state = state.copyWith(newContact: Contact());

  void setSelectedContact(Contact contact) => state = state.copyWith(
        selectedContact: contact,
        newContact: null,
      );

  void setName(String name) =>
      state = state.copyWith(newContact: state.newContact.copyWith(name: name));
  void setPhoneNumber(String phoneNumber) => state = state.copyWith(
      newContact: state.newContact.copyWith(phoneNumber: phoneNumber));

  void resetContactAddViewState() {
    state = state.copyWith(selectedContact: null, newContact: null);
  }

  void resetContactState() {
    state = ContactState();
  }
}
