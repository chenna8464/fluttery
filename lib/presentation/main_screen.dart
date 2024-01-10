import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InAppWebView(
            initialUrlRequest: URLRequest(
                url: WebUri.uri(Uri.parse('https://flutlab.io/workspace'))),
          )
          // ElevatedButton(
          //     onPressed: () {
          //       openUrl('https://flutlab.io/workspace');
          //     },
          //     child: const Text('data'))
        ],
      ),
    );
  }
}
