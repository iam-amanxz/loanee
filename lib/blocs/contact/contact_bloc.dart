import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/contact/contact.dart';
import '../../models/notification/notification.dart';
import '../../services/contact_service.dart';
import '../notification/notification_bloc.dart';

part 'contact_bloc.freezed.dart';
part 'contact_event.dart';
part 'contact_state.dart';

class ContactBloc extends Bloc<ContactEvent, ContactState> {
  final ContactService contactService;
  final WidgetRef ref;
  final NotificationBloc notificationBloc;

  ContactBloc({
    required this.contactService,
    required this.ref,
    required this.notificationBloc,
  }) : super(const ContactState.initial()) {
    on<CreateContactEvent>(_onCreateContact);
    on<DeleteContactEvent>(_onDeleteContact);
  }

  Future<void> _onDeleteContact(
    DeleteContactEvent event,
    Emitter<ContactState> emit,
  ) async {
    emit(const ContactState.loading());
    try {
      await contactService.deleteContact(event.contact);
      emit(const ContactState.success(SuccessFlag.deletedContact));
      notificationBloc.showSuccessNotification(
        AppNotification.successDeleting('Contact'),
      );
    } catch (e) {
      emit(const ContactState.error());
      notificationBloc.showErrorNotification(
        AppNotification.errorDeleting('Contact'),
      );
    }
  }

  Future<void> _onCreateContact(
    CreateContactEvent event,
    Emitter<ContactState> emit,
  ) async {
    emit(const ContactState.loading());
    try {
      final contact =
          await contactService.getContactByFirstName(event.contact.firstName);
      if (contact != null) {
        emit(const ContactState.error());
        notificationBloc.showErrorNotification(
          AppNotification.errorFieldConflict('first name'),
        );
        return;
      }
      await contactService.createContact(event.contact);
      emit(const ContactState.success(SuccessFlag.createdContact));
      notificationBloc.showSuccessNotification(
        AppNotification.successCreating('Contact'),
      );
    } catch (e) {
      emit(const ContactState.error());
      notificationBloc.showErrorNotification(
        AppNotification.errorCreating('Contact'),
      );
    }
  }

  void createContact(Contact contact) => add(
        ContactEvent.createContact(contact),
      );
  void deleteContact(Contact contact) => add(
        ContactEvent.deleteContact(contact),
      );
}
