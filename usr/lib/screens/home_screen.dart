import 'package:couldai_user_app/models/user_model.dart';
import 'package:couldai_user_app/widgets/user_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Dummy user for demonstration
    final User dummyUser = User(
      id: '1',
      name: 'Jessica, 24',
      bio: 'Lover of dogs, coffee, and long walks on the beach. Looking for someone to share adventures with!',
      imageUrls: [
        'https://images.unsplash.com/photo-1520466809213-7b9a56adcd45?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
      ],
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Yap', style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: UserCard(user: dummyUser),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton(
                  onPressed: () {},
                  backgroundColor: Colors.white,
                  child: const Icon(Icons.close, color: Colors.red, size: 30),
                ),
                FloatingActionButton(
                  onPressed: () {},
                   backgroundColor: Colors.white,
                  child: const Icon(Icons.favorite, color: Colors.green, size: 30),
                ),
              ],
            ),
             const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
