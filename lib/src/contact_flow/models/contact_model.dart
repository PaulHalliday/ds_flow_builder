import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_model.freezed.dart';

@freezed
abstract class Contact with _$Contact {
  const factory Contact({
    String name,
    String phoneNumber,
  }) = _Contact;
}

@freezed
abstract class ContactState with _$ContactState {
  const factory ContactState({
    @Default([]) List<Contact> contactList,
    Contact newContact,
    Contact selectedContact,
  }) = _ContactState;
}
