// ignore_for_file: unnecessary_string_interpolations
import 'package:flutter/material.dart';
import 'package:newsapp/widgets/list_of_categories.dart';
import 'package:newsapp/widgets/newsListBuilder.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: RichText(
              text: const TextSpan(children: [
            TextSpan(
                text: 'News',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 35,
                  fontWeight: FontWeight.w500,
                )),
            TextSpan(
                text: ' Clowd',
                style: TextStyle(
                  color: Colors.orange,
                  fontSize: 35,
                  fontWeight: FontWeight.w500,
                )),
          ])),
        ),
        body: const Column(
          children: [
            SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 100,
              child: ListOfCategories(),
            ),
            SizedBox(
              height: 15,
            ),
            Expanded(
              child: Newslistbuilder(),
            ),
          ],
        ));
  }
}
