import 'package:flutter/material.dart';
import 'package:blogpediav2/models/models.dart';
import 'package:blogpediav2/cubit/cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'primarycard.dart';
import 'detail.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Postingan"),
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.only(left: 18.0),
        child: BlocBuilder<PostCubit, PostState>(
          builder: (_, state) {
            if (state is PostInitial) {
              return Center(
                child: SizedBox(
                  width: 30,
                  height: 30,
                  child: CircularProgressIndicator(),
                ),
              );
            } else {
              PostLoaded postLoaded = state as PostLoaded;
              return ListView.builder(
                itemCount: postLoaded.posts.length,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  var posts = postLoaded.posts[index];
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Detail(post: posts),
                        ),
                      );
                    },
                    child: new Card(
                        margin: EdgeInsets.only(top: 12.0, right: 12.0),
                        child: new ListTile(
                          title: new Text(posts.judul),
                        )),
                  );
                },
              );
            }
          },
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Color.fromARGB(255, 0, 0, 0)),
              title: new Text('Home')),
          BottomNavigationBarItem(
              icon: Icon(Icons.power, color: Color.fromARGB(255, 0, 0, 0)),
              title: new Text('Power'))
        ],
      ),
    );
  }
}
