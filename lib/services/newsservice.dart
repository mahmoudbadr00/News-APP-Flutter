import 'package:dio/dio.dart';
import 'package:newsapp/models/articlemodel.dart';

class NewsService {
  final Dio dio;
  NewsService(this.dio);
  Future<List<Articlemodel>> getNews(String category) async {
    Response response = await dio.get(
        "https://newsapi.org/v2/top-headlines?country=us&category=$category&apiKey=bfcacfbe213f4908a2557944bcb4f1bd");
    Map<String, dynamic> jsonData = response.data;
    List<dynamic> articles = jsonData["articles"];
    List<Articlemodel> articleList = [];
    for (var article in articles) {
      if (article["urlToImage"] == null ||
          article["title"] == null ||
          article["description"] == null ||
          article["url"] == null) {
        continue;
      } else {
        Articlemodel model = Articlemodel(
          image: article["urlToImage"],
          title: article["title"],
          subtitle: article["description"],
          url: article["url"],
        );
        articleList.add(model);
      }
    }
    return articleList;
  }
}
