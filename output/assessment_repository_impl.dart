 
import 'package:cloud_firestore/cloud_firestore.dart';
import '../datasources/remote/assessment_remote.dart';
import '../models/assessment_model.dart';
import '../../../domain/repositories/assessment_repository.dart';
import '../../../domain/entities/assessment.dart';

class AssessmentRepositoryImpl implements AssessmentRepository {
  final AssessmentRemote remote;
  AssessmentRepositoryImpl(this.remote);

  @override
  Future<List<Assessment>> fetchPage({int limit = 10, DocumentSnapshot? startAfter}) async {
    final snap = await remote.fetchPage(limit: limit, startAfter: startAfter);
    return snap.docs.map((d) => AssessmentModel.fromDoc(d)).toList();
  }

  @override
  Future<Assessment?> getById(String id) async {
    final doc = await remote.getById(id);
    if (!doc.exists) return null;
    return AssessmentModel.fromDoc(doc);
  }
}
