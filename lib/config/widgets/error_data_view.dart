import 'package:flutter/material.dart';

class ErrorDataView extends StatelessWidget {
  final void Function() onRetry;
  const ErrorDataView({
    super.key,
    required this.onRetry,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Center(
            child: Icon(
              Icons.warning,
              size: 50,
              color: Colors.grey.shade400,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            'Oops, something went wrong!',
            style: TextStyle(
              color: Colors.grey.shade600,
            ),
          ),
          TextButton(
            onPressed: onRetry,
            child: const Text('Retry'),
          ),
        ],
      ),
    );
  }
}
