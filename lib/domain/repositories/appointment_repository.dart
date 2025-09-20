 
import '../entities/appointment.dart';

abstract class AppointmentRepository {
  Stream<List<Appointment>> watchAll();
  Future<void> bookAppointment({required String userId, required String slotId, required DateTime date});
}
