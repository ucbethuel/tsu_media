import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class OnlineAppScreen extends StatefulWidget {
  const OnlineAppScreen({super.key});

  @override
  State<OnlineAppScreen> createState() => _OnlineAppScreenState();
}

class _OnlineAppScreenState extends State<OnlineAppScreen> {
  InAppWebViewController? _tsuOnlineScreeningPortalController;
  double _progress = 0;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tsuOnlineScreeningPortalController?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          InAppWebView(
            initialUrlRequest: URLRequest(
              url: WebUri("https://apply.tsuniversity.edu.ng/register.php"),
            ),
            initialSettings: InAppWebViewSettings(initialScale: 2),
            onProgressChanged: (controller, progress) {
              setState(
                () {
                  _progress = progress / 100;
                },
              );
            },
          ),

//Conditionally show Progress Indicator while App is Loading.
          _progress < 1
              ? const Scaffold(
                  body: Center(
                    child: CircularProgressIndicator(),
                  ),
                )
              : Container()
        ],
      ),
    );
  }
}
