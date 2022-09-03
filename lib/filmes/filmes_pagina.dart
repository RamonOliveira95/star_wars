import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:star_wars/filmes/filmes.dart';

import '../favoritos/favoritos.dart';

class FilmesPagina extends StatefulWidget {
  const FilmesPagina({Key? key}) : super(key: key);

  @override
  State<FilmesPagina> createState() => _FilmesPaginaState();
}

class _FilmesPaginaState extends State<FilmesPagina> {
  Filmes filmes = Filmes();

  @override
  Widget build(BuildContext context) {
    var filmeFavorito = Provider.of<Favoritos>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Personagens"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: ListView.builder(
          itemCount: filmes.nome.length,
          itemBuilder: (context, i) {
            dynamic contato = filmes.nome[i];
            var avatar = CircleAvatar(
              child: Text(contato["id"]),
            );
            return ListTile(
              leading: avatar,
              title: Text(contato["nome"]),
              trailing: IconButton(
                  onPressed: () {
                    !filmeFavorito.list.contains(contato["nome"]) ?
                    filmeFavorito.add(contato["nome"]) :
                    filmeFavorito.remove(contato["nome"]);
                  },
                  icon: filmeFavorito.list.contains(contato["nome"])
                      ? const Icon(
                          Icons.favorite,
                          color: Colors.red,
                        )
                      : const Icon(Icons.favorite_border)),
            );
          },
        ),
      ),
    );
  }
}
