 
import 'package:cloud_firestore/cloud_firestore.dart';
import '../entities/assessment.dart';
import '../repositories/assessment_repository.dart';

class FetchAssessments {
  final AssessmentRepository repo;
  FetchAssessments(this.repo);

  Future<List<Assessment>> call({int limit = 10, DocumentSnapshot? startAfter}) {
    return repo.fetchPage(limit: limit, startAfter: startAfter);
  }
}
