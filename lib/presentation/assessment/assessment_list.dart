
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
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Assessment Cards
            ...state.items.asMap().entries.map((entry) {
              final index = entry.key;
              final item = entry.value;
              final imagePath = item.imageUrl.isEmpty ? 'assets/assement/image1.png' : item.imageUrl;
              return AssessmentTile(
                id: item.id,
                title: item.title,
                subtitle: item.subtitle,
                imageUrl: imagePath,
                index: index, // Pass index for gradient selection
              );
            }).toList(),
            // Loading Indicator or View All Button
            if (state.hasMore)
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8),
                child: ShimmerPlaceholder(height: 110),
              )
            else
              Center(
                child: InkWell(
                  onTap: () {
                    print('View all Pressed');
                    // Optionally navigate: GoRouter.of(context).go('/assessments');
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                      color: const Color(0xFF232F58),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 21, vertical: 3),
                    child: const Text(
                      'View all',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}