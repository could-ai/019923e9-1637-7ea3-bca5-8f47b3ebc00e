import 'package:flutter/material.dart';

class MatchesScreen extends StatelessWidget {
  const MatchesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Dummy list of matches
    final List<String> matches = [
      'Emily',
      'Sophia',
      'Olivia',
      'Isabella',
      'Ava',
      'Mia',
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Matches'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: matches.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const CircleAvatar(
              // You can add a placeholder image here
              child: Icon(Icons.person),
            ),
            title: Text(matches[index]),
            subtitle: const Text('Tap to chat'),
            onTap: () {
              // Navigate to chat screen
            },
          );
        },
      ),
    );
  }
}
