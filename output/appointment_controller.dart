 
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../data/datasources/remote/appointment_remote.dart';
import '../../data/repositories_impl/appointment_repository_impl.dart';
import '../../domain/repositories/appointment_repository.dart';

final appointmentControllerProvider = Provider<AppointmentRepository>((ref) {
  final repo = AppointmentRepositoryImpl(AppointmentRemote());
  return repo;
});
