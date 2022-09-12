import 'package:flutter/material.dart';
import 'package:fluttermoji/fluttermoji.dart';
import 'package:star_wars/site/site_oficial.dart';

class Titulo extends StatelessWidget {
  const Titulo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 100,
                height: 50,
                child: ElevatedButton(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SiteOficial()),
                  ),
                  child: const Text("Site Oficial"),
                ),
              ),
              FluttermojiCircleAvatar(
                radius: 50,
              ),
            ],
          );
  }
}