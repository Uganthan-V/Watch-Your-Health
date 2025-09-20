 
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../domain/entities/assessment.dart';

class AssessmentModel extends Assessment {
  AssessmentModel({required super.id, required super.title, required super.subtitle, required super.imageUrl});

  factory AssessmentModel.fromDoc(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>? ?? {};
    return AssessmentModel(
      id: doc.id,
      title: data['title'] ?? '',
      subtitle: data['subtitle'] ?? '',
      imageUrl: data['image'] ?? '',
    );
  }

  Map<String, dynamic> toJson() => {'title': title, 'subtitle': subtitle, 'image': imageUrl};
}
