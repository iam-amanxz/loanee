import 'package:cloud_firestore/cloud_firestore.dart'
    show
        CollectionReference,
        FirebaseFirestore,
        QueryDocumentSnapshot,
        QuerySnapshot;
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/contact/contact.dart';

class ContactService {
  final contactsPath = 'contacts';
  final FirebaseFirestore _db;
  late final CollectionReference contacts;

  ContactService(this._db) {
    contacts = _db.collection(contactsPath);
  }

  Future<Contact?> getContactByFirstName(String firstName) async {
    final querySnapshot =
        await contacts.where('firstName', isEqualTo: firstName).get();
    if (querySnapshot.docs.isEmpty) {
      return null;
    }
    final contact = Contact.fromJson(
      querySnapshot.docs.first.data() as Map<String, Object?>,
    );
    return contact;
  }

  Stream<List<Contact>> get contactsStream =>
      contacts.orderBy('firstName').snapshots().map(
            (snapshot) => snapshot.docs
                .map(
                  (doc) => Contact.fromJson(
                    doc.data() as Map<String, Object?>,
                  ),
                )
                .toList(),
          );

  Future<List<Contact>> getContacts() async {
    final querySnapshot = await contacts.orderBy('firstName').get();
    final contactsList = querySnapshot.docs
        .map(
          (doc) => Contact.fromJson(
            doc.data() as Map<String, Object?>,
          ),
        )
        .toList();
    return contactsList;
  }

  Future<Contact> createContact(Contact contact) async {
    final docRef = contacts.doc();
    final contactWithId = contact.copyWith(id: docRef.id);
    await docRef.set(contactWithId.toJson());
    final snapshot = await docRef.get();
    final data = snapshot.data() as Map<String, Object?>;
    return Contact.fromJson(data);
  }

  Future<void> deleteContact(Contact contact) async {
    final docRef = contacts.doc(contact.id);
    await docRef.delete();
  }
}

final contactServiceProvider = Provider<ContactService>(((ref) {
  return ContactService(FirebaseFirestore.instance);
}));
