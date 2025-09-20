// // import 'package:flutter/material.dart';
// // import 'package:cached_network_image/cached_network_image.dart';
// // import 'package:go_router/go_router.dart';

// // class AssessmentTile extends StatelessWidget {
// //   final String id;
// //   final String title;
// //   final String subtitle;
// //   final String imageUrl;
// //   const AssessmentTile({Key? key, required this.id, required this.title, required this.subtitle, required this.imageUrl}) : super(key: key);

// //   @override
// //   Widget build(BuildContext context) {
// //     return Card(
// //       margin: const EdgeInsets.symmetric(vertical: 8),
// //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
// //       child: InkWell(
// //         onTap: () => GoRouter.of(context).go('/assessment/$id'),
// //         child: SizedBox(
// //           height: 110,
// //           child: Row(
// //             children: [
// //               Hero(
// //                 tag: 'assessment-image-$id',
// //                 child: ClipRRect(
// //                   borderRadius: BorderRadius.circular(12),
// //                   child: imageUrl.isEmpty
// //                       ? Container(width: 110, color: Colors.grey.shade200)
// //                       : CachedNetworkImage(imageUrl: imageUrl, width: 110, height: 110, fit: BoxFit.cover),
// //                 ),
// //               ),
// //               const SizedBox(width: 12),
// //               Expanded(
// //                 child: Padding(
// //                   padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 6),
// //                   child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
// //                     Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
// //                     const SizedBox(height: 6),
// //                     Text(subtitle, maxLines: 3, overflow: TextOverflow.ellipsis),
// //                   ]),
// //                 ),
// //               ),
// //               const SizedBox(width: 12),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }


// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:go_router/go_router.dart';

// class AssessmentTile extends StatelessWidget {
//   final String id;
//   final String title;
//   final String subtitle;
//   final String imageUrl;
//   final bool isFirst;

//   const AssessmentTile({
//     Key? key,
//     required this.id,
//     required this.title,
//     required this.subtitle,
//     required this.imageUrl,
//     this.isFirst = false,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.only(bottom: 6, left: 15, right: 15),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(11),
//         color: Colors.white,
//         boxShadow: const [
//           BoxShadow(
//             color: Color(0x0D000000),
//             blurRadius: 21,
//             offset: Offset(2, 2),
//           ),
//         ],
//       ),
//       child: InkWell(
//         onTap: () => GoRouter.of(context).go('/assessment/$id'),
//         child: Row(
//           children: [
//             // Image with optional gradient
//             Container(
//               margin: const EdgeInsets.only(right: 14),
//               padding: const EdgeInsets.all(5),
//               decoration: isFirst
//                   ? const BoxDecoration(
//                       borderRadius: BorderRadius.only(
//                         topLeft: Radius.circular(11),
//                         bottomLeft: Radius.circular(11),
//                       ),
//                       gradient: LinearGradient(
//                         begin: Alignment(-1, -1),
//                         end: Alignment(-1, 1),
//                         colors: [
//                           Color(0x80E36631),
//                           Color(0x80D9BE5D),
//                         ],
//                       ),
//                     )
//                   : null,
//               child: imageUrl.startsWith('assets/')
//                   ? SvgPicture.asset(
//                       imageUrl,
//                       width: 93,
//                       height: 111,
//                       fit: BoxFit.fill,
//                     )
//                   : CachedNetworkImage(
//                       imageUrl: imageUrl,
//                       width: 93,
//                       height: 111,
//                       fit: BoxFit.fill,
//                       placeholder: (context, url) => Container(
//                         width: 93,
//                         height: 111,
//                         color: Colors.grey.shade200,
//                       ),
//                       errorWidget: (context, url, error) => SvgPicture.asset(
//                         'assets/assessment/img1.svg', // Fallback image
//                         width: 93,
//                         height: 111,
//                         fit: BoxFit.fill,
//                       ),
//                     ),
//             ),
//             // Text and Button
//             Expanded(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Container(
//                     margin: const EdgeInsets.only(bottom: 7),
//                     child: Text(
//                       title,
//                       style: const TextStyle(
//                         color: Color(0xFF222E58),
//                         fontSize: 14,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ),
//                   Container(
//                     margin: const EdgeInsets.only(bottom: 10),
//                     child: Text(
//                       subtitle,
//                       style: const TextStyle(
//                         color: Color(0xFF2A2A2A),
//                         fontSize: 10,
//                         fontWeight: FontWeight.bold,
//                       ),
//                       maxLines: 3,
//                       overflow: TextOverflow.ellipsis,
//                     ),
//                   ),
//                   Row(
//                     children: const [
//                       Icon(
//                         Icons.play_arrow, // Use icon instead of start logo
//                         size: 22,
//                         color: Color(0xFF255FD5),
//                       ),
//                       SizedBox(width: 10),
//                       Text(
//                         'Start',
//                         style: TextStyle(
//                           color: Color(0xFF255FD5),
//                           fontSize: 14,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:go_router/go_router.dart';

class AssessmentTile extends StatelessWidget {
  final String id;
  final String title;
  final String subtitle;
  final String imageUrl;
  final int index; // For selecting gradient

  const AssessmentTile({
    Key? key,
    required this.id,
    required this.title,
    required this.subtitle,
    required this.imageUrl,
    required this.index,
  }) : super(key: key);

  // List of gradient color pairs for each card
  static const List<List<Color>> gradientColors = [
    [Color(0x80E36631), Color(0x80D9BE5D)], // Original from Frame1
    [Color(0x8066BB6A), Color(0x80D4E157)], // Greenish gradient
    [Color(0x80429BEB), Color(0x80F06292)], // Bluish-pink gradient
    [Color(0x80FF8A65), Color(0x80FFD54F)], // Orange-yellow gradient
    [Color(0x809C27B0), Color(0x80E040FB)], // Purple gradient
  ];

  @override
  Widget build(BuildContext context) {
    // Select gradient based on index (cycle through gradientColors)
    final gradientIndex = index % gradientColors.length;
    final selectedGradient = gradientColors[gradientIndex];

    return Container(
      margin: const EdgeInsets.only(bottom: 6, left: 15, right: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(11),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Color(0x0D000000),
            blurRadius: 21,
            offset: Offset(2, 2),
          ),
        ],
      ),
      child: InkWell(
        onTap: () => GoRouter.of(context).go('/assessment/$id'),
        child: Row(
          children: [
            // Image with dynamic gradient
            Container(
              margin: const EdgeInsets.only(right: 14),
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(11),
                  bottomLeft: Radius.circular(11),
                ),
                gradient: LinearGradient(
                  begin: const Alignment(-1, -1),
                  end: const Alignment(-1, 1),
                  colors: selectedGradient,
                ),
              ),
              child: imageUrl.startsWith('assets/')
                  ? SvgPicture.asset(
                      imageUrl,
                      width: 93,
                      height: 111,
                      fit: BoxFit.fill,
                    )
                  : CachedNetworkImage(
                      imageUrl: imageUrl,
                      width: 93,
                      height: 111,
                      fit: BoxFit.fill,
                      placeholder: (context, url) => Container(
                        width: 93,
                        height: 111,
                        color: Colors.grey.shade200,
                      ),
                      errorWidget: (context, url, error) => SvgPicture.asset(
                        'assets/assessment/img1.svg',
                        width: 93,
                        height: 111,
                        fit: BoxFit.fill,
                      ),
                    ),
            ),
            // Text and Button
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 7),
                    child: Text(
                      title,
                      style: const TextStyle(
                        color: Color(0xFF222E58),
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    child: Text(
                      subtitle,
                      style: const TextStyle(
                        color: Color(0xFF2A2A2A),
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.play_arrow,
                        size: 22,
                        color: Color(0xFF255FD5),
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Start',
                        style: TextStyle(
                          color: Color(0xFF255FD5),
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}