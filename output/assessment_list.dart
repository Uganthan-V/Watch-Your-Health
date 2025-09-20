import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'assessment_tile.dart';
import 'assessment_controller.dart';
import '../shared_widgets/shimmer_placeholder.dart';

class AssessmentListScreen extends ConsumerWidget {
  const AssessmentListScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(assessmentControllerProvider);
    final controller = ref.read(assessmentControllerProvider.notifier);

    return RefreshIndicator(
      onRefresh: controller.refresh,
      child: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: state.items.length + (state.hasMore ? 1 : 0),
        itemBuilder: (ctx, i) {
          if (i >= state.items.length) {
            controller.loadNext();
            return const Padding(padding: EdgeInsets.symmetric(vertical: 8), child: ShimmerPlaceholder(height: 110));
          }
          final it = state.items[i];
          return AssessmentTile(id: it.id, title: it.title, subtitle: it.subtitle, imageUrl: it.imageUrl);
        },
      ),
    );
  }
}
