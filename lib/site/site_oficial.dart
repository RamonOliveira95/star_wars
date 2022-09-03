import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class MyChromeSafariBrowser extends ChromeSafariBrowser {
  @override
  void onOpened() {
    print("O navegador abriu");
  }

  @override
  void onCompletedInitialLoad() {
    print("O navegador está carregando");
  }

  @override
  void onClosed() {
    print("O navegador fechou");
  }
}

class SiteOficial extends StatefulWidget {
  final ChromeSafariBrowser browser = MyChromeSafariBrowser();

  SiteOficial({Key? key}) : super(key: key);

  @override
  State<SiteOficial> createState() => _SiteOficialState();
}

class _SiteOficialState extends State<SiteOficial> {
  @override
  void initState() {
    widget.browser.addMenuItem(ChromeSafariBrowserMenuItem(
        id: 1,
        label: 'Custom item menu 1',
        action: (url, title) {
          print('Custom item menu 1 clicked!');
        }));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Site Oficial"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () async {
              await widget.browser.open(
                  url: Uri.parse("https://www.starwars.com/community"),
                  options: ChromeSafariBrowserClassOptions(
                      android: AndroidChromeCustomTabsOptions(
                          shareState: CustomTabsShareState.SHARE_STATE_OFF),
                      ios: IOSSafariOptions(barCollapsingEnabled: true)));
            },
            child: const Text("Abrir o Site")),
      ),
    );
  }
}
