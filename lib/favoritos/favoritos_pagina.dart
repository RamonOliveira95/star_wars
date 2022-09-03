
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:star_wars/favoritos/favoritos.dart';
import 'package:star_wars/personagens/personagens_pagina.dart';

class FavoritosPagina extends StatefulWidget {
  const FavoritosPagina({Key? key}) : super(key: key);

  @override
  State<FavoritosPagina> createState() => _FavoritosPaginaState();
}

class _FavoritosPaginaState extends State<FavoritosPagina> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Favoritos"),
      ),

      //Não consegui puxar os favoritos para a página certa
      /*
      body: Consumer<Favoritos>(
        builder: (context, value, child){
          return ListView.builder(
            itemCount: value.list.length,
            itemBuilder: (context, index){
              return PersonagensPagina();
            },
          );

        }
      ),
      */
    );
  }
}