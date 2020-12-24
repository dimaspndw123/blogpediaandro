import 'package:flutter/material.dart';
import 'package:blogpediav2/models/models.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:blogpediav2/cubit/postcubit.dart';
import 'detail.dart';
import 'primarycard.dart';

class Detail2 extends StatelessWidget {
  final Kategori kategori;
  Detail2({this.kategori});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Postingan"),
      ),
      body: Container(
        child: BlocBuilder<PostCubit, PostState>(
          builder: (_, state) {
            if (state is PostLoaded) {
              List<Post> posts = state.posts
                  .where((element) => element.idkategori == kategori.id)
                  .toList();
              return ListView.builder(
                itemCount: posts.length,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  var post = posts[index];
                  return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Detail(post: post),
                          ),
                        );
                      },
                      child: new Card(
                        margin: EdgeInsets.only(top: 12.0, right: 12.0),
                        child: new ListTile(
                          title: new Text(post.judul),
                        ),
                      ));
                },
              );
            } else {
              return Center(
                child: SizedBox(
                  width: 30,
                  height: 30,
                  child: CircularProgressIndicator(),
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
