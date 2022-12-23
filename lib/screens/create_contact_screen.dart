import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart' show GoRouter;

import '../blocs/contact/contact_bloc.dart';
import '../blocs/notification/notification_bloc.dart';
import '../config/router.dart';
import '../models/contact/contact.dart';
import '../models/notification/notification.dart';
import '../config/widgets/base_button.dart';
import '../config/widgets/base_text_input.dart';
import '../config/widgets/side_drawer.dart';

class CreateContactScreen extends StatefulWidget {
  const CreateContactScreen({super.key});

  @override
  State<CreateContactScreen> createState() => _CreateContactScreenState();
}

class _CreateContactScreenState extends State<CreateContactScreen> {
  late final StreamSubscription<ContactState> _subscription;
  late final TextEditingController _firstNameController;
  late final TextEditingController _lastNameController;

  @override
  void initState() {
    _firstNameController = TextEditingController();
    _lastNameController = TextEditingController();
    _subscription = context.read<ContactBloc>().stream.listen((state) {
      state.whenOrNull(
        success: (flag) {
          if (flag == SuccessFlag.createdContact) {
            GoRouter.of(context).go(routeContacts);
          }
        },
      );
    });
    super.initState();
  }

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }

  Future<void> _createContact() async {
    final firstName = _firstNameController.text.trim();
    final lastName = _lastNameController.text.trim();

    if (firstName.isEmpty) {
      context.read<NotificationBloc>().showErrorNotification(
            AppNotification.errorFieldRequired('First name'),
          );
      return;
    }

    final newContact = Contact(
      id: '',
      firstName: firstName,
      lastName: lastName,
    );

    context.read<ContactBloc>().createContact(newContact);
    _firstNameController.clear();
    _lastNameController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Create Contact'),
      ),
      drawer: const SideDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              BaseTextInput(
                controller: _firstNameController,
                label: 'First Name',
              ),
              const SizedBox(height: 10),
              BaseTextInput(
                controller: _lastNameController,
                label: 'Last Name',
              ),
              const SizedBox(height: 20),
              BlocBuilder<ContactBloc, ContactState>(
                builder: (context, state) {
                  return BaseButton(
                    backgroundColor: Colors.indigo,
                    color: Colors.white,
                    label: 'Create',
                    onTap: _createContact,
                    isLoading: state.maybeWhen(
                      loading: () => true,
                      orElse: () => false,
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
