import 'package:flutter/material.dart';
import 'package:blogpediav2/models/models.dart';
import 'package:flutter_html/flutter_html.dart';

class Detail extends StatelessWidget {
  final Post post;
  Detail({this.post});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(title: new Text("Postinngan")),
      body: new Container(
        padding: const EdgeInsets.all(10.0),
        child: new Card(
          child: new Center(
            child: new ListView(
              children: [
                Image.network("http://10.0.2.2/miniblog/assets/img/post/" +
                    post.file_gambar),
                new Text(
                  post.judul,
                  textAlign: TextAlign.center,
                  style: new TextStyle(
                      fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                new Text(
                  post.username,
                  textAlign: TextAlign.center,
                ),
                Html(data: post.isi_post)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
