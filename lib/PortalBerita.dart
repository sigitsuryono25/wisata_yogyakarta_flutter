import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() => runApp(MaterialApp(
      home: PortalBerita(),
    ));

class PortalBerita extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PortalBeritaState();
  }
}

class _PortalBeritaState extends State<PortalBerita> {
  GlobalObjectKey keys;
  double height;
  double width;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Portal Berita"),
      ),
      body: Container(
        child: Stack(
          children: <Widget>[
            WebView(
              initialUrl: "https://jogjaprov.go.id/home",
              javascriptMode: JavascriptMode.unrestricted,
              onPageFinished: (url) {
                setState(() {
                  height = 0;
                  width = 0;
                });
              },
            ),
            Align(
              child: SizedBox(
                width: width,
                height: height,
                child: CircularProgressIndicator(),
              ),
              alignment: Alignment.center,
            ),
          ],
        ),
      ),
    );
  }
}
