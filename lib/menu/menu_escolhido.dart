import 'package:flutter/material.dart';
import 'package:star_wars/personagens/personagens_pagina.dart';

class MenuEscolhido extends StatefulWidget {
  const MenuEscolhido({Key? key}) : super(key: key);

  @override
  State<MenuEscolhido> createState() => _MenuEscolhidoState();
}

class _MenuEscolhidoState extends State<MenuEscolhido> {
  @override
  Widget build(BuildContext context) {
    return Container(
              width: 400,
              height: 200,
              color: Colors.red,
              child: ListView(
                children: [
                  for(int a = 0; a < 30; a++)
                  Text("Teste"),
                ],
              ),
            );
    
  }
}