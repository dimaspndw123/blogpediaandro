import 'package:flutter/material.dart';
import 'package:blogpediav2/models/models.dart';
import 'package:blogpediav2/cubit/cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'primarycard2.dart';
import 'detail2.dart';

class HomePage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Kategori"),
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.only(left: 18.0),
        child: BlocBuilder<CategoryCubit, KategoriState>(
          builder: (_, state) {
            if (state is KategoriInitial) {
              return Center(
                child: SizedBox(
                  width: 30,
                  height: 30,
                  child: CircularProgressIndicator(),
                ),
              );
            } else {
              KategoriLoaded kategoriLoaded = state as KategoriLoaded;
              return ListView.builder(
                itemCount: kategoriLoaded.kategori.length,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  var kategori = kategoriLoaded.kategori[index];
                  return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Detail2(kategori: kategori),
                          ),
                        );
                      },
                      child: new Card(
                          margin: EdgeInsets.only(top: 12.0, right: 12.0),
                          child: new ListTile(
                            title: new Text(kategori.nama),
                          )));
                },
              );
            }
          },
        ),
      ),
    );
  }
}
