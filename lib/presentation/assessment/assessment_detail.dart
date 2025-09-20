import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../core/constants.dart';

class AssessmentDetailScreen extends StatefulWidget {
  final String assessmentId;
  const AssessmentDetailScreen({Key? key, required this.assessmentId}) : super(key: key);

  @override
  State<AssessmentDetailScreen> createState() => _AssessmentDetailScreenState();
}

class _AssessmentDetailScreenState extends State<AssessmentDetailScreen> {
  bool _isFav = false;

  @override
  void initState() {
    super.initState();
    _loadFav();
  }

  Future<void> _loadFav() async {
    final sp = await SharedPreferences.getInstance();
    setState(() {
      _isFav = sp.getBool('${AppConstants.favoritesPrefix}${widget.assessmentId}') ?? false;
    });
  }

  Future<void> _toggleFav() async {
    final sp = await SharedPreferences.getInstance();
    final key = '${AppConstants.favoritesPrefix}${widget.assessmentId}';
    await sp.setBool(key, !_isFav);
    setState(() => _isFav = !_isFav);
  }

  @override
  Widget build(BuildContext context) {
    final id = widget.assessmentId;
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent, elevation: 0),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Hero(tag: 'assessment-image-$id', child: Container(height: 220, color: Colors.greenAccent, width: double.infinity)),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(children: [
                Expanded(child: Text('Health Risk Assessment', style: Theme.of(context).textTheme.headlineMedium)),
                IconButton(onPressed: _toggleFav, icon: Icon(_isFav ? Icons.favorite : Icons.favorite_border, color: Colors.red))
              ]),
              const SizedBox(height: 12),
              const Text('What do you get?'),
              const SizedBox(height: 12),
              Row(children: const [_FeatureChip(label: 'Key Body Vitals'), SizedBox(width: 8), _FeatureChip(label: 'Posture Analysis')]),
              const SizedBox(height: 20),
              const Text('How we do it?'),
              const SizedBox(height: 12),
              Container(height: 160, color: Colors.grey.shade200),
              const SizedBox(height: 16),
              const Text('Instructions'),
              const SizedBox(height: 8),
              const Text('1. Ensure you are in a well-lit space\n2. Allow camera access\n3. Avoid baggy clothes\n4. Follow trainer instructions'),
            ]),
          )
        ]),
      ),
    );
  }
}

class _FeatureChip extends StatelessWidget {
  final String label;
  const _FeatureChip({required this.label, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Chip(label: Text(label));
}
