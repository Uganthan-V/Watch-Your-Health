import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:go_router/go_router.dart';

class AssessmentTile extends StatelessWidget {
  final String id;
  final String title;
  final String subtitle;
  final String imageUrl;
  const AssessmentTile({Key? key, required this.id, required this.title, required this.subtitle, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: InkWell(
        onTap: () => GoRouter.of(context).go('/assessment/$id'),
        child: SizedBox(
          height: 110,
          child: Row(
            children: [
              Hero(
                tag: 'assessment-image-$id',
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: imageUrl.isEmpty
                      ? Container(width: 110, color: Colors.grey.shade200)
                      : CachedNetworkImage(imageUrl: imageUrl, width: 110, height: 110, fit: BoxFit.cover),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 6),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                    const SizedBox(height: 6),
                    Text(subtitle, maxLines: 3, overflow: TextOverflow.ellipsis),
                  ]),
                ),
              ),
              const SizedBox(width: 12),
            ],
          ),
        ),
      ),
    );
  }
}
