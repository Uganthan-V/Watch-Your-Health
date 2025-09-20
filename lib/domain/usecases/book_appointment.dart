 
import '../repositories/appointment_repository.dart';

class BookAppointment {
  final AppointmentRepository repo;
  BookAppointment(this.repo);

  Future<void> call({required String userId, required String slotId, required DateTime date}) {
    return repo.bookAppointment(userId: userId, slotId: slotId, date: date);
  }
}
