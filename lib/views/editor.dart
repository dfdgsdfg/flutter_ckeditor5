import 'dart:developer';

import 'package:ckeditor5/src/editor_js.dart';
import 'package:ckeditor5/src/index_html.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Editor extends StatefulWidget {
  const Editor({super.key});

  @override
  State<Editor> createState() => _EditorState();
}

class _EditorState extends State<Editor> {
  final controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..setBackgroundColor(const Color(0x00000000));

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: EditorJs.classic(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) return Container();

        final editorJs = snapshot.data ?? '';
        final htmlString = indexHtml(editorJs);

        controller.loadHtmlString(htmlString);

        return WebViewWidget(controller: controller);
      },
    );
  }
}
