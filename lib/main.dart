import 'package:blogpediav2/homepage2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:blogpediav2/cubit/cubit.dart';
import 'package:get/route_manager.dart';
import 'homepage.dart';
import 'homepage2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
              create: (_) =>
                  PostCubit()..getPosts(idKategori: null, keyword: null)),
          BlocProvider(create: (_) => CategoryCubit()..getKategori()),
        ],
        child: GetMaterialApp(
          title: 'PBP Android',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          home: HomePage2(),
        ));
  }
}
