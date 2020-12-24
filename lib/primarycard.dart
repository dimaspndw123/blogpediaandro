import 'package:flutter/material.dart';
import 'package:blogpediav2/models/models.dart';

class PrimaryCard extends StatelessWidget {
  final Post post;
  PrimaryCard({this.post});

  @override
  Widget build(BuildContext context) {
    return Container(child: Text(post.judul));
  }
}
