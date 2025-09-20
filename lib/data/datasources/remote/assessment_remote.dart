 
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../../../../core/constants.dart' as c; // keep path consistent in your project

class AssessmentRemote {
  final FirebaseFirestore _fire = FirebaseFirestore.instance;

  AssessmentRemote() {
    // Optionally set cache size here:
    _fire.settings = const Settings(cacheSizeBytes: Settings.CACHE_SIZE_UNLIMITED, persistenceEnabled: true);
  }

  Query get assessmentsQuery => _fire.collection(c.AppConstants.assessmentsCollection).orderBy('createdAt', descending: true);

  Future<QuerySnapshot> fetchPage({int limit = 10, DocumentSnapshot? startAfter}) {
    Query q = assessmentsQuery.limit(limit);
    if (startAfter != null) q = q.startAfterDocument(startAfter);
    return q.get();
  }

  Future<DocumentSnapshot> getById(String id) => _fire.collection(c.AppConstants.assessmentsCollection).doc(id).get();
}
