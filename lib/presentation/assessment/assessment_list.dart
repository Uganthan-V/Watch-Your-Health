// // import 'package:flutter/material.dart';
// // import 'package:flutter_riverpod/flutter_riverpod.dart';
// // import 'assessment_tile.dart';
// // import 'assessment_controller.dart';
// // import '../shared_widgets/shimmer_placeholder.dart';

// // class AssessmentListScreen extends ConsumerWidget {
// //   const AssessmentListScreen({Key? key}) : super(key: key);
// //   @override
// //   Widget build(BuildContext context, WidgetRef ref) {
// //     final state = ref.watch(assessmentControllerProvider);
// //     final controller = ref.read(assessmentControllerProvider.notifier);

// //     return RefreshIndicator(
// //       onRefresh: controller.refresh,
// //       child: ListView.builder(
// //         padding: const EdgeInsets.all(16),
// //         itemCount: state.items.length + (state.hasMore ? 1 : 0),
// //         itemBuilder: (ctx, i) {
// //           if (i >= state.items.length) {
// //             controller.loadNext();
// //             return const Padding(padding: EdgeInsets.symmetric(vertical: 8), child: ShimmerPlaceholder(height: 110));
// //           }
// //           final it = state.items[i];
// //           return AssessmentTile(id: it.id, title: it.title, subtitle: it.subtitle, imageUrl: it.imageUrl);
// //         },
// //       ),
// //     );
// //   }
// // }


// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'assessment_tile.dart';
// import 'assessment_controller.dart';
// import '../shared_widgets/shimmer_placeholder.dart';

// class AssessmentListScreen extends ConsumerWidget {
//   const AssessmentListScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final state = ref.watch(assessmentControllerProvider);
//     final controller = ref.read(assessmentControllerProvider.notifier);

//     return RefreshIndicator(
//       onRefresh: controller.refresh,
//       child: SingleChildScrollView(
//         padding: const EdgeInsets.all(16),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // Assessment Cards
//             ...state.items.asMap().entries.map((entry) {
//               final index = entry.key;
//               final item = entry.value;
//               // Map Firestore imageUrl to local asset if empty or invalid
//               final imagePath = item.imageUrl.isEmpty ? 'assets/assessment/img1.svg' : item.imageUrl;
//               return AssessmentTile(
//                 id: item.id,
//                 title: item.title,
//                 subtitle: item.subtitle,
//                 imageUrl: imagePath,
//                 isFirst: index == 0, // Apply gradient to the first card only
//               );
//             }).toList(),
//             // Loading Indicator or View All Button
//             if (state.hasMore)
//               const Padding(
//                 padding: EdgeInsets.symmetric(vertical: 8),
//                 child: ShimmerPlaceholder(height: 110),
//               )
//             else
//               Center(
//                 child: InkWell(
//                   onTap: () {
//                     print('View all Pressed');
//                     // Optionally navigate: GoRouter.of(context).go('/assessments');
//                   },
//                   child: Container(
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(13),
//                       color: const Color(0xFF232F58),
//                     ),
//                     padding: const EdgeInsets.symmetric(horizontal: 21, vertical: 3),
//                     child: const Text(
//                       'View all',
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 12,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//           ],
//         ),
//       ),
//     );
//   }
// }

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
              final imagePath = item.imageUrl.isEmpty ? 'assets/assessment/img1.svg' : item.imageUrl;
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