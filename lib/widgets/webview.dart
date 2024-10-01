import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:newsapp/models/articlemodel.dart';

class WebviewPage extends StatefulWidget {
  const WebviewPage({super.key, required this.articles});
  final Articlemodel articles;
  @override
  State<WebviewPage> createState() => _WebviewPageState();
}

class _WebviewPageState extends State<WebviewPage> {
  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      url: widget.articles.url,
      withJavascript: true,
      withZoom: true,
      withLocalStorage: true,
    );
  }
}
