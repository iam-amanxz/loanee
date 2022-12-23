import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:go_router/go_router.dart' show GoRouter;

import '../blocs/contact/contact_bloc.dart';
import '../config/router.dart';
import '../models/contact/contact.dart';
import '../services/contact_service.dart';
import '../config/widgets/empty_data_view.dart';
import '../config/widgets/error_data_view.dart';
import '../config/widgets/side_drawer.dart';

class ContactsScreen extends ConsumerStatefulWidget {
  const ContactsScreen({super.key});

  @override
  ConsumerState<ContactsScreen> createState() => _ContactsScreenState();
}

class _ContactsScreenState extends ConsumerState<ContactsScreen> {
  void _deleteContact(Contact contact) {
    context.read<ContactBloc>().deleteContact(contact);
    GoRouter.of(context).pop();
  }

  void _handleOnDeletePressed(Contact contact) {
    showDialog(
      context: context,
      builder: ((context) {
        return AlertDialog(
          title: const Text('Delete contact'),
          content: const Text(
            'This action is not reversible. Are you sure?',
          ),
          actions: [
            TextButton(
              child: const Text('Cancel'),
              onPressed: () {
                GoRouter.of(context).pop();
              },
            ),
            TextButton(
              child: const Text(
                'Delete',
                style: TextStyle(color: Colors.red),
              ),
              onPressed: () {
                _deleteContact(contact);
              },
            ),
          ],
        );
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Contacts'),
        actions: [
          IconButton(
            onPressed: () {
              GoRouter.of(context).go(routeContactCreate);
            },
            icon: const Icon(Icons.add),
          )
        ],
      ),
      drawer: const SideDrawer(),
      body: StreamBuilder<List<Contact>>(
        stream: ref.watch(contactServiceProvider).contactsStream,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return ErrorDataView(
              onRetry: () {},
            );
          }
          final contacts = snapshot.requireData;
          if (contacts.isEmpty) {
            return EmptyDataView(
              label: 'Contacts',
              onCreate: () {
                GoRouter.of(context).push(routeContactCreate);
              },
            );
          }
          return SlidableAutoCloseBehavior(
            child: ListView.separated(
              itemCount: contacts.length,
              separatorBuilder: ((context, index) {
                return Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.grey.shade200),
                    ),
                  ),
                );
              }),
              itemBuilder: ((context, index) {
                final contact = contacts[index];
                return ContactItemCard(
                  contact: contact,
                  onDeletePressed: _handleOnDeletePressed,
                );
              }),
            ),
          );
        },
      ),
    );
  }
}

class ContactItemCard extends StatelessWidget {
  final Contact contact;
  final void Function(Contact contact) onDeletePressed;
  const ContactItemCard({
    super.key,
    required this.contact,
    required this.onDeletePressed,
  });

  @override
  Widget build(BuildContext context) {
    return Slidable(
      groupTag: '0',
      endActionPane: ActionPane(
        motion: const ScrollMotion(),
        children: [
          SlidableAction(
            onPressed: (_) {
              onDeletePressed(contact);
            },
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,
            icon: Icons.delete,
            label: 'Delete',
          ),
        ],
      ),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(20.0),
        child: Text(
          '${contact.firstName} ${contact.lastName}',
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
      ),
    );
  }
}
