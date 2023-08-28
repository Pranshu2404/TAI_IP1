import 'package:flutter/material.dart';
import 'dart:async';
import 'package:webview_flutter/webview_flutter.dart';
//ignore: must_be_immutable
class RecipeView extends StatefulWidget {
  
String url;
RecipeView(this.url, {super.key});
  @override
  State<RecipeView> createState() => _RecipeViewState();
  
}

class _RecipeViewState extends State<RecipeView> {
  late  String finalurl;
  final Completer<WebViewController> controller = Completer<WebViewController>();
  @override
  void initState() {
    if(widget.url.toString().contains("http://"))
      {
        finalurl = widget.url.toString().replaceAll("http://", "https://");
      }
    else{
      finalurl = widget.url;
    }
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("RECIPE SEARCH RESULT"),
        backgroundColor:Colors.amber[800] ,
        shadowColor: Colors.yellow,
      ),
      body: Container(
        margin: const EdgeInsets.all(2),
        color: const Color.fromARGB(255, 254, 172, 30),
        child: WebView(
          initialUrl: finalurl,
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (WebViewController webViewController){
            setState(() {
              controller.complete(webViewController);
            });
          },
        ),
      ),
    );
  }
}
