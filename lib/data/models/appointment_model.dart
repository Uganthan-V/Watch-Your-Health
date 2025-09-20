 
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../domain/entities/appointment.dart';

class AppointmentModel extends Appointment {
  AppointmentModel({required super.id, required super.title, required super.description, required super.date});

  factory AppointmentModel.fromDoc(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>? ?? {};
    final ts = data['date'];
    DateTime date = DateTime.now();
    if (ts is Timestamp) date = ts.toDate();
    return AppointmentModel(
      id: doc.id,
      title: data['title'] ?? '',
      description: data['description'] ?? '',
      date: date,
    );
  }

  Map<String, dynamic> toJson() => {'title': title, 'description': description, 'date': date};
}
