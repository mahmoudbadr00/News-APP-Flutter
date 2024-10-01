import 'package:flutter/material.dart';
import 'package:newsapp/models/articlemodel.dart';
import 'package:newsapp/widgets/webview.dart';
//import 'package:url_launcher/url_launcher.dart';

class Newslist extends StatelessWidget {
  const Newslist({super.key, required this.articles});
  final Articlemodel articles;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => WebviewPage(articles: articles)));
      },
      child: Column(
        children: [
          Image.network(
            articles.image,
            width: double.infinity,
            height: 200,
            fit: BoxFit.fill,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              articles.title,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0, right: 8.0, left: 8.0),
            child: Text(
              articles.subtitle,
              overflow: TextOverflow.ellipsis,
              maxLines: 3,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          const Divider(
            thickness: 2,
          )
        ],
      ),
    );
  }
}
