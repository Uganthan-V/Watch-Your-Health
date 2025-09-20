 
import 'package:cloud_firestore/cloud_firestore.dart';
import '../entities/assessment.dart';

abstract class AssessmentRepository {
  Future<List<Assessment>> fetchPage({int limit = 10, DocumentSnapshot? startAfter});
  Future<Assessment?> getById(String id);
}
