import 'package:flutter/material.dart';
import 'package:fluttermoji/fluttermoji.dart';

class EditandoAvatar extends StatelessWidget {
  const EditandoAvatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: FluttermojiCircleAvatar(
                  radius: 100,
                  backgroundColor: Colors.grey[200],
                ),
              ),
              SizedBox(
                child: Row(
                  children: [
                    Text(
                      "Salvar:  ",
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    FluttermojiSaveWidget(),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 30),
                child: FluttermojiCustomizer(
                  autosave: false,
                  theme: FluttermojiThemeData(
                      boxDecoration: const BoxDecoration(boxShadow: [BoxShadow()])),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
