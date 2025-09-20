 
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../../../../core/constants.dart' as c;

class AppointmentRemote {
  final FirebaseFirestore _fire = FirebaseFirestore.instance;

  Stream<QuerySnapshot> watchAppointments() {
    return _fire.collection(c.AppConstants.appointmentsCollection).orderBy('date').snapshots();
  }
}
