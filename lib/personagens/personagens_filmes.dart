import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class PersonagensFilmes extends StatefulWidget {
  const PersonagensFilmes({Key? key}) : super(key: key);

  @override
  State<PersonagensFilmes> createState() => _PersonagensFilmesState();
}

class _PersonagensFilmesState extends State<PersonagensFilmes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Personagens"),
      ),
      body: FutureBuilder<dynamic>(
        future: pegarPersonagem(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index){
                var personagem = snapshot.data![index];
              return ListTile(
                leading: CircleAvatar(
                  child: Text('1'),
                ),
                title: Text(personagem["name"]),
              );
            });
          } else if (snapshot.hasError) {
            return Text("${snapshot.error}");
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }

  pegarPersonagem() async {
    var url = Uri.parse('https://swapi.dev/api/people/');
    var resposta = await http.get(url);
    if (resposta.statusCode == 200) {
      return jsonDecode(resposta.body);
    } else {
      throw Exception("Não foi possível carregar os personagens");
    }
  }
}



//TENTATIVA 0.3
/*
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter/material.dart';
import 'personagem.dart';

class PersonagensFilmes extends StatefulWidget {
  const PersonagensFilmes({Key? key}) : super(key: key);

  @override
  State<PersonagensFilmes> createState() => _PersonagensState();
}

class _PersonagensState extends State<PersonagensFilmes> {
  late Future<List<Personagem>> personagens;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    personagens = pegarPersonagem();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Personagens"),
      ),
      body: Center(
        child: FutureBuilder<List<Personagem>>(
          future: personagens,
          builder: (context, snapshot) {
            //Está dando erro e não entra nesse if
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  Personagem personagem = snapshot.data![index];
                  return ListTile(
                    title: Text(personagem.name!),
                  );
                },
              );
              //Está entrando nesse else com erro.
            } else if (snapshot.hasError) {
              return Text(snapshot.error.toString());
            }
            return const CircularProgressIndicator();
          },
        ),
      ),
    );
  }

  Future<List<Personagem>> pegarPersonagem() async {
    var url = Uri.parse('https://swapi.dev/api/people');
    var response = await http.get(url);

    if (response.statusCode == 200) {
      List listaPersonagens = json.decode(response.body);
      return listaPersonagens.map((json) => Personagem.fromJson(json)).toList();
    } else {
      throw Exception("Não foi possível carregar os personagens");
    }
  }
}
*/
