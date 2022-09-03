import 'package:flutter/cupertino.dart';

class Favoritos extends ChangeNotifier{
  final List<String> _favoritos = [];
  List<String> get list => _favoritos;

   void add(String favorito){
    _favoritos.add(favorito);
    notifyListeners();
   }

   void remove(String favorito){
    _favoritos.remove(favorito);
    notifyListeners();
   }

}