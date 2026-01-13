import 'package:flutter/material.dart';

class IdentityFooter extends StatelessWidget {
  final String identity;

  const IdentityFooter({super.key, required this.identity});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 8),
      color: Colors.black.withOpacity(0.05),
      child: Text(
        identity,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.bold,
          color: Colors.black54,
        ),
      ),
    );
  }
}
