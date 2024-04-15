import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class TsuMainScreen extends StatefulWidget {
  const TsuMainScreen({super.key});

  @override
  State<TsuMainScreen> createState() => _TsuMainScreenState();
}

class _TsuMainScreenState extends State<TsuMainScreen> {
  double _progress = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF179bd7),
        title: const Text(
          "TSU Portal",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Stack(
        children: [
          InAppWebView(
            initialUrlRequest: URLRequest(
              url: WebUri("https://tsuniversity.edu.ng"),
            ),
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
