import 'package:flutter/material.dart';

class OtroMyMessageBubble extends StatelessWidget {
  const OtroMyMessageBubble({Key? key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: colors.primary,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              'Id excepteur quis',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
