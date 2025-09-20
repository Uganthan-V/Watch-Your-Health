 
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../data/datasources/remote/assessment_remote.dart';
import '../../data/repositories_impl/assessment_repository_impl.dart';
import '../../domain/usecases/fetch_assessments.dart';
import '../../domain/entities/assessment.dart';
import 'package:flutter_riverpod/legacy.dart';


final assessmentControllerProvider = StateNotifierProvider<AssessmentController, AssessmentState>(
  (ref) {
    final repo = AssessmentRepositoryImpl(AssessmentRemote());
    return AssessmentController(FetchAssessments(repo));
  },
);

class AssessmentState {
  final bool isLoading;
  final List<Assessment> items;
  final bool hasMore;
  final DocumentSnapshot? lastDoc;
  AssessmentState({required this.isLoading, required this.items, required this.hasMore, this.lastDoc});
  factory AssessmentState.initial() => AssessmentState(isLoading: false, items: [], hasMore: true);
}

class AssessmentController extends StateNotifier<AssessmentState> {
  final FetchAssessments fetchUsecase;
  static const pageSize = 6;
  AssessmentController(this.fetchUsecase) : super(AssessmentState.initial()) {
    loadNext();
  }

  Future<void> loadNext() async {
    if (!state.hasMore || state.isLoading) return;
    state = AssessmentState(isLoading: true, items: state.items, hasMore: state.hasMore, lastDoc: state.lastDoc);
    final List<Assessment> next = await fetchUsecase(limit: pageSize, startAfter: state.lastDoc);
    // In production map DocumentSnapshots to lastDoc. Here we can't easily access doc pointers in usecase, so we approximate.
    final hasMore = next.length == pageSize;
    state = AssessmentState(isLoading: false, items: [...state.items, ...next], hasMore: hasMore, lastDoc: state.lastDoc);
  }

  Future<void> refresh() async {
    state = AssessmentState(isLoading: true, items: [], hasMore: true);
    // reload
    await loadNext();
  }
}
