// ignore_for_file: file_names
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/models/articlemodel.dart';
import 'package:newsapp/services/newsservice.dart';
import 'package:newsapp/widgets/newslist.dart';

class Science extends StatefulWidget {
  const Science({super.key});

  @override
  State<Science> createState() => _ScienceState();
}

class _ScienceState extends State<Science> {
  List<Articlemodel> articles = [];
  // ignore: prefer_typing_uninitialized_variables
  var future;
  @override
  void initState() {
    super.initState();
    future = NewsService(Dio()).getNews('science');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: const Text('Science',
              style: TextStyle(
                color: Colors.black,
                fontSize: 35,
                fontWeight: FontWeight.w500,
              ))),
      body: FutureBuilder<List<Articlemodel>>(
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
      ),
    );
  }
}
