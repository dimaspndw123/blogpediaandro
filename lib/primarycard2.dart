import 'package:flutter/material.dart';
import 'package:blogpediav2/models/models.dart';

class PrimaryCard2 extends StatelessWidget {
  final Kategori kategori;
  PrimaryCard2({this.kategori});

  @override
  Widget build(BuildContext context) {
    return Container(child: Text(kategori.nama));
  }
}
