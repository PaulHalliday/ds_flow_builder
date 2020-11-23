// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'contact_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ContactTearOff {
  const _$ContactTearOff();

// ignore: unused_element
  _Contact call({String name, String phoneNumber}) {
    return _Contact(
      name: name,
      phoneNumber: phoneNumber,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Contact = _$ContactTearOff();

/// @nodoc
mixin _$Contact {
  String get name;
  String get phoneNumber;

  $ContactCopyWith<Contact> get copyWith;
}

/// @nodoc
abstract class $ContactCopyWith<$Res> {
  factory $ContactCopyWith(Contact value, $Res Function(Contact) then) =
      _$ContactCopyWithImpl<$Res>;
  $Res call({String name, String phoneNumber});
}

/// @nodoc
class _$ContactCopyWithImpl<$Res> implements $ContactCopyWith<$Res> {
  _$ContactCopyWithImpl(this._value, this._then);

  final Contact _value;
  // ignore: unused_field
  final $Res Function(Contact) _then;

  @override
  $Res call({
    Object name = freezed,
    Object phoneNumber = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      phoneNumber:
          phoneNumber == freezed ? _value.phoneNumber : phoneNumber as String,
    ));
  }
}

/// @nodoc
abstract class _$ContactCopyWith<$Res> implements $ContactCopyWith<$Res> {
  factory _$ContactCopyWith(_Contact value, $Res Function(_Contact) then) =
      __$ContactCopyWithImpl<$Res>;
  @override
  $Res call({String name, String phoneNumber});
}

/// @nodoc
class __$ContactCopyWithImpl<$Res> extends _$ContactCopyWithImpl<$Res>
    implements _$ContactCopyWith<$Res> {
  __$ContactCopyWithImpl(_Contact _value, $Res Function(_Contact) _then)
      : super(_value, (v) => _then(v as _Contact));

  @override
  _Contact get _value => super._value as _Contact;

  @override
  $Res call({
    Object name = freezed,
    Object phoneNumber = freezed,
  }) {
    return _then(_Contact(
      name: name == freezed ? _value.name : name as String,
      phoneNumber:
          phoneNumber == freezed ? _value.phoneNumber : phoneNumber as String,
    ));
  }
}

/// @nodoc
class _$_Contact implements _Contact {
  const _$_Contact({this.name, this.phoneNumber});

  @override
  final String name;
  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'Contact(name: $name, phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Contact &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(phoneNumber);

  @override
  _$ContactCopyWith<_Contact> get copyWith =>
      __$ContactCopyWithImpl<_Contact>(this, _$identity);
}

abstract class _Contact implements Contact {
  const factory _Contact({String name, String phoneNumber}) = _$_Contact;

  @override
  String get name;
  @override
  String get phoneNumber;
  @override
  _$ContactCopyWith<_Contact> get copyWith;
}

/// @nodoc
class _$ContactStateTearOff {
  const _$ContactStateTearOff();

// ignore: unused_element
  _ContactState call(
      {List<Contact> contactList = const [],
      Contact newContact,
      Contact selectedContact}) {
    return _ContactState(
      contactList: contactList,
      newContact: newContact,
      selectedContact: selectedContact,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ContactState = _$ContactStateTearOff();

/// @nodoc
mixin _$ContactState {
  List<Contact> get contactList;
  Contact get newContact;
  Contact get selectedContact;

  $ContactStateCopyWith<ContactState> get copyWith;
}

/// @nodoc
abstract class $ContactStateCopyWith<$Res> {
  factory $ContactStateCopyWith(
          ContactState value, $Res Function(ContactState) then) =
      _$ContactStateCopyWithImpl<$Res>;
  $Res call(
      {List<Contact> contactList, Contact newContact, Contact selectedContact});

  $ContactCopyWith<$Res> get newContact;
  $ContactCopyWith<$Res> get selectedContact;
}

/// @nodoc
class _$ContactStateCopyWithImpl<$Res> implements $ContactStateCopyWith<$Res> {
  _$ContactStateCopyWithImpl(this._value, this._then);

  final ContactState _value;
  // ignore: unused_field
  final $Res Function(ContactState) _then;

  @override
  $Res call({
    Object contactList = freezed,
    Object newContact = freezed,
    Object selectedContact = freezed,
  }) {
    return _then(_value.copyWith(
      contactList: contactList == freezed
          ? _value.contactList
          : contactList as List<Contact>,
      newContact:
          newContact == freezed ? _value.newContact : newContact as Contact,
      selectedContact: selectedContact == freezed
          ? _value.selectedContact
          : selectedContact as Contact,
    ));
  }

  @override
  $ContactCopyWith<$Res> get newContact {
    if (_value.newContact == null) {
      return null;
    }
    return $ContactCopyWith<$Res>(_value.newContact, (value) {
      return _then(_value.copyWith(newContact: value));
    });
  }

  @override
  $ContactCopyWith<$Res> get selectedContact {
    if (_value.selectedContact == null) {
      return null;
    }
    return $ContactCopyWith<$Res>(_value.selectedContact, (value) {
      return _then(_value.copyWith(selectedContact: value));
    });
  }
}

/// @nodoc
abstract class _$ContactStateCopyWith<$Res>
    implements $ContactStateCopyWith<$Res> {
  factory _$ContactStateCopyWith(
          _ContactState value, $Res Function(_ContactState) then) =
      __$ContactStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Contact> contactList, Contact newContact, Contact selectedContact});

  @override
  $ContactCopyWith<$Res> get newContact;
  @override
  $ContactCopyWith<$Res> get selectedContact;
}

/// @nodoc
class __$ContactStateCopyWithImpl<$Res> extends _$ContactStateCopyWithImpl<$Res>
    implements _$ContactStateCopyWith<$Res> {
  __$ContactStateCopyWithImpl(
      _ContactState _value, $Res Function(_ContactState) _then)
      : super(_value, (v) => _then(v as _ContactState));

  @override
  _ContactState get _value => super._value as _ContactState;

  @override
  $Res call({
    Object contactList = freezed,
    Object newContact = freezed,
    Object selectedContact = freezed,
  }) {
    return _then(_ContactState(
      contactList: contactList == freezed
          ? _value.contactList
          : contactList as List<Contact>,
      newContact:
          newContact == freezed ? _value.newContact : newContact as Contact,
      selectedContact: selectedContact == freezed
          ? _value.selectedContact
          : selectedContact as Contact,
    ));
  }
}

/// @nodoc
class _$_ContactState implements _ContactState {
  const _$_ContactState(
      {this.contactList = const [], this.newContact, this.selectedContact})
      : assert(contactList != null);

  @JsonKey(defaultValue: const [])
  @override
  final List<Contact> contactList;
  @override
  final Contact newContact;
  @override
  final Contact selectedContact;

  @override
  String toString() {
    return 'ContactState(contactList: $contactList, newContact: $newContact, selectedContact: $selectedContact)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ContactState &&
            (identical(other.contactList, contactList) ||
                const DeepCollectionEquality()
                    .equals(other.contactList, contactList)) &&
            (identical(other.newContact, newContact) ||
                const DeepCollectionEquality()
                    .equals(other.newContact, newContact)) &&
            (identical(other.selectedContact, selectedContact) ||
                const DeepCollectionEquality()
                    .equals(other.selectedContact, selectedContact)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(contactList) ^
      const DeepCollectionEquality().hash(newContact) ^
      const DeepCollectionEquality().hash(selectedContact);

  @override
  _$ContactStateCopyWith<_ContactState> get copyWith =>
      __$ContactStateCopyWithImpl<_ContactState>(this, _$identity);
}

abstract class _ContactState implements ContactState {
  const factory _ContactState(
      {List<Contact> contactList,
      Contact newContact,
      Contact selectedContact}) = _$_ContactState;

  @override
  List<Contact> get contactList;
  @override
  Contact get newContact;
  @override
  Contact get selectedContact;
  @override
  _$ContactStateCopyWith<_ContactState> get copyWith;
}
