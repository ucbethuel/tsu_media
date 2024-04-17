import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class DegPortalScreen extends StatefulWidget {
  const DegPortalScreen({super.key});

  @override
  State<DegPortalScreen> createState() => _DegPortalScreenState();
}

class _DegPortalScreenState extends State<DegPortalScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    // StreamSubscription<List<ConnectivityResult>> subscription = Connectivity()
    //     .onConnectivityChanged
    //     .listen((List<ConnectivityResult> result) {
    //   // Received changes in available connectivity types!
    // });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  double _progress = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "TSU Degree Portal",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Stack(
        children: [
          InAppWebView(
            initialUrlRequest: URLRequest(
              url: WebUri(
                  "https://degportal.tsuniversity.edu.ng/profile/login.php"),
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
