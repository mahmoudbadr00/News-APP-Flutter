// ignore_for_file: file_names
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/models/articlemodel.dart';
import 'package:newsapp/services/newsservice.dart';
import 'package:newsapp/widgets/newslist.dart';

class Newslistbuilder extends StatefulWidget {
  const Newslistbuilder({super.key});
  @override
  State<Newslistbuilder> createState() => _NewslistbuilderState();
}

class _NewslistbuilderState extends State<Newslistbuilder> {
  List<Articlemodel> articles = [];
  // ignore: prefer_typing_uninitialized_variables
  var future;
  @override
  void initState() {
    super.initState();
    future = NewsService(Dio()).getNews('general');
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Articlemodel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return ListView.builder(
            itemCount: snapshot.data!.length,
            itemBuilder: (context, i) {
              return Newslist(
                articles: snapshot.data![i],
              );
            },
          );
        } else if (snapshot.hasError) {
          return const Center(
            child: Column(
              children: [
                SizedBox(
                  height: 150,
                ),
                Icon(
                  Icons.warning_amber_sharp,
                  size: 45,
                ),
                Text(
                  'Ooops .. there has no data now',
                  style: TextStyle(fontSize: 25),
                ),
              ],
            ),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
