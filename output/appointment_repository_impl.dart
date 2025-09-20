 
import 'package:cloud_firestore/cloud_firestore.dart';
import '../datasources/remote/appointment_remote.dart';
import '../models/appointment_model.dart';
import '../../../domain/repositories/appointment_repository.dart';
import '../../../domain/entities/appointment.dart';

class AppointmentRepositoryImpl implements AppointmentRepository {
  final AppointmentRemote remote;
  final FirebaseFirestore _fire = FirebaseFirestore.instance;

  AppointmentRepositoryImpl(this.remote);

  @override
  Stream<List<Appointment>> watchAll() {
    return remote.watchAppointments().map((snap) => snap.docs.map((d) => AppointmentModel.fromDoc(d)).toList());
  }

  @override
  Future<void> bookAppointment({required String userId, required String slotId, required DateTime date}) async {
    await _fire.collection('bookings').add({
      'userId': userId,
      'slotId': slotId,
      'date': date,
      'createdAt': FieldValue.serverTimestamp(),
    });
  }
}
