import 'package:flutter/material.dart';
import 'package:fluttermoji/fluttermoji.dart';
import 'package:star_wars/favoritos/favoritos_pagina.dart';
import 'package:star_wars/filmes/filmes_pagina.dart';
import 'package:star_wars/personagens/personagens_pagina.dart';
import 'package:star_wars/site/site_oficial.dart';
import '../avatar/editar_avatar.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 100,
                  height: 50,
                  child: ElevatedButton(
                     onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SiteOficial()),
                  ),
                    child: const Text("Site Oficial"),
                  ),
                ),
                FluttermojiCircleAvatar(
                  radius: 50,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton.icon(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const EditandoAvatar()),
                  ),
                  icon: const Icon(Icons.edit),
                  label: const SizedBox(
                    height: 20,
                    width: 50,
                    child: Text("Editar"),
                  ),
                ),
              ],
            ),
            Container(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: 80,
                  height: 50,
                  child: ElevatedButton(
                      onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const FilmesPagina()),
                  ),
                    child: const Text("Filmes"),
                  ),
                ),
                SizedBox(
                  width: 120,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PersonagensPagina()),
                  ),
                    child: const Text("Personagens"),
                  ),
                ),
                SizedBox(
                  width: 90,
                  height: 50,
                  child: ElevatedButton(
                      onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const FavoritosPagina()),
                  ),
                    child: const Text("Favoritos"),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
