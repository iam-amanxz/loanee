part of 'contact_bloc.dart';

@freezed
class ContactEvent with _$ContactEvent {
  const factory ContactEvent.createContact(Contact contact) =
      CreateContactEvent;
  const factory ContactEvent.deleteContact(Contact contact) =
      DeleteContactEvent;
}
