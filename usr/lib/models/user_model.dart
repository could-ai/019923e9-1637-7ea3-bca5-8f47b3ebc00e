import 'package:flutter/material.dart';

class User {
  final String id;
  final String name;
  final String bio;
  final List<String> imageUrls;

  User({
    required this.id,
    required this.name,
    required this.bio,
    required this.imageUrls,
  });
}
