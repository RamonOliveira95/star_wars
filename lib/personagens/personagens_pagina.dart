import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:star_wars/favoritos/favoritos.dart';
import 'package:star_wars/personagens/personagem.dart';

class PersonagensPagina extends StatefulWidget {
  const PersonagensPagina({Key? key}) : super(key: key);
  @override
  State<PersonagensPagina> createState() => _PersonagensPaginaState();
}

class _PersonagensPaginaState extends State<PersonagensPagina> {
  Personagem personagem = Personagem();
  @override
  Widget build(BuildContext context) {
    var personagemFavorito = Provider.of<Favoritos>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Personagens"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: ListView.builder(
          itemCount: personagem.nome.length,
          itemBuilder: (context, i) {
            dynamic contato = personagem.nome[i];
            var avatar = CircleAvatar(
              backgroundImage: AssetImage(contato["avatar"]),
              //backgroundImage: NetworkImage(contato["avatar"]),
            );
            return ListTile(
                leading: avatar,
                title: Text(contato["nome"]),
                trailing: IconButton(
                  onPressed: () {
                    !personagemFavorito.list.contains(contato["nome"]) ? 
                    personagemFavorito.add(contato["nome"]) : 
                    personagemFavorito.remove(contato["nome"]);

                  },
                  icon: personagemFavorito.list.contains(contato["nome"])
                      ? const Icon(
                          Icons.favorite,
                          color: Colors.red,
                        )
                      : const Icon(
                          Icons.favorite_border,
                        ),
                ));
          },
        ),
      ),
    );
  }
}