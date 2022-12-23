import 'package:flutter/material.dart';

class EmptyDataView extends StatelessWidget {
  final void Function() onCreate;
  final String label;
  const EmptyDataView({
    super.key,
    required this.onCreate,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Center(
            child: Icon(
              Icons.error,
              size: 50,
              color: Colors.grey.shade400,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            'There are no $label to display',
            style: TextStyle(
              color: Colors.grey.shade600,
            ),
          ),
          TextButton(
            onPressed: onCreate,
            child: const Text('Create'),
          ),
        ],
      ),
    );
  }
}
