// 


import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:go_router/go_router.dart';

class AssessmentTile extends StatelessWidget {
  final String id;
  final String title;
  final String subtitle;
  final String imageUrl;
  final int index;

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

  // List of image paths to cycle through
  static const List<String> imagePaths = [
    'assets/assement/image1.jpg',
    'assets/assement/image2.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    // Select gradient based on index
    final gradientIndex = index % gradientColors.length;
    final selectedGradient = gradientColors[gradientIndex];

    // Select image path based on index, fallback to imageUrl if valid
    final selectedImagePath = imageUrl.isEmpty || !imageUrl.startsWith('assets/')
        ? imagePaths[index % imagePaths.length]
        : imageUrl;

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
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width - 30, // Account for left/right margins
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(11),
          child: InkWell(
            onTap: () => GoRouter.of(context).go('/assessment/$id'),
            child: Row(
              children: [
                // Image with dynamic gradient
                Container(
                  margin: const EdgeInsets.only(right: 10),
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
                  child: selectedImagePath.startsWith('assets/')
                      ? Image.asset(
                          selectedImagePath,
                          width: MediaQuery.of(context).size.width * 0.25, // 25% of screen width
                          height: 111,
                          fit: BoxFit.fill,
                        )
                      : CachedNetworkImage(
                          imageUrl: selectedImagePath,
                          width: MediaQuery.of(context).size.width * 0.25, // 25% of screen width
                          height: 111,
                          fit: BoxFit.fill,
                          placeholder: (context, url) => Container(
                            width: MediaQuery.of(context).size.width * 0.25,
                            height: 111,
                            color: Colors.grey.shade200,
                          ),
                          errorWidget: (context, url, error) => Image.asset(
                            'assets/assement/image1.png',
                            width: MediaQuery.of(context).size.width * 0.25,
                            height: 111,
                            fit: BoxFit.fill,
                          ),
                        ),
                ),
                // Text and Button
                Expanded(
                  child: SizedBox(
                    width: double.infinity, // Ensure it takes available space
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(bottom: 7),
                          child: Flexible(
                            child: Text(
                              title,
                              style: const TextStyle(
                                color: Color(0xFF222E58),
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 10),
                          child: Flexible(
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
