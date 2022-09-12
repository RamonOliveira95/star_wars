class Personagem{
  final nome = [
    {"nome":"Luke Skywalker", "avatar":"images/personagens/luke.png"},
    {"nome":"Princesa Leia", "avatar":"images/personagens/leia.png"},
    {"nome":"Han Solo", "avatar":"images/personagens/solo.png"},
    {"nome":"Darth Vader", "avatar":"images/personagens/vader.png"},
    {"nome": "R2-D2", "avatar": "images/personagens/r2d2.png"},
    {"nome": "C-3PO", "avatar": "images/personagens/c3po.png"},
    {"nome": "Chewbacca", "avatar": "images/personagens/chewbacca.png"},
    {"nome": "Obi-Wan Kenobi", "avatar": "images/personagens/obiwan.png"},
    {"nome": "Yoda", "avatar": "images/personagens/yoda.png"},
    {"nome": "Padmé Amidala", "avatar": "images/personagens/amidala.png"},
    {"nome": "Stormtrooper", "avatar": "images/personagens/stormtrooper.png"},
    {"nome": "Darth Sidious", "avatar": "images/personagens/sidious.png"},
    {"nome": "Lando Calrissian", "avatar": "images/personagens/lando.png"},
    {"nome": "Rey", "avatar": "images/personagens/rey.png"},
    {"nome": "Finn", "avatar": "images/personagens/finn.png"},
    {"nome": "Poe Dameron", "avatar": "images/personagens/dameron.png"},
    {"nome": "Kylo Ren", "avatar": "images/personagens/kyloren.png"},
    {"nome": "General Hux", "avatar": "images/personagens/generalhux.png"},
    {"nome": "Capitã Phasma", "avatar": "images/personagens/pashma.png"},
    {"nome": "Qui-Gon Jinn", "avatar": "images/personagens/quingon.png"},
    {"nome": "Mace Windu", "avatar": "images/personagens/mace.png"},
    {"nome": "Jabba o Hutt", "avatar": "images/personagens/jabba.png"},
    {"nome": "Boba Fett", "avatar": "images/personagens/boba.png"},
    {"nome": "Conde Dooku", "avatar": "images/personagens/dooku.png"},
    {"nome": "Governador Tarkin", "avatar": "images/personagens/generaltarkin.png"},
    {"nome": "Almirante Ackbar", "avatar": "images/personagens/ackbar.png"},
    {"nome": "General Grievous", "avatar": "images/personagens/grievous.png"},
    {"nome": "Jango Fett", "avatar": "images/personagens/jango.png"},
    {"nome": "Darth Maul", "avatar": "images/personagens/darthmaul.png"},
    {"nome": "Jar Jar Binks", "avatar": "images/personagens/jarjar.png"},
    {"nome": "Palpatine", "avatar": "images/personagens/palpatine.png"},
    {"nome": "Anakin Skywalker", "avatar": "images/personagens/anakin.png"},
  ];
}

/*
//Tentativas de implementar API
class Personagem {
  String? name;
  String? height;
  String? mass;
  String? hairColor;
  String? skinColor;
  String? eyeColor;
  String? birthYear;
  String? gender;
  String? homeworld;
  List<String>? films;
  List<void>? species;
  List<String>? vehicles;
  List<String>? starships;
  String? created;
  String? edited;
  String? url;

  Personagem(
      {this.name,
      this.height,
      this.mass,
      this.hairColor,
      this.skinColor,
      this.eyeColor,
      this.birthYear,
      this.gender,
      this.homeworld,
      this.films,
      this.species,
      this.vehicles,
      this.starships,
      this.created,
      this.edited,
      this.url});

  Personagem.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    height = json['height'];
    mass = json['mass'];
    hairColor = json['hair_color'];
    skinColor = json['skin_color'];
    eyeColor = json['eye_color'];
    birthYear = json['birth_year'];
    gender = json['gender'];
    homeworld = json['homeworld'];
    films = json['films'].cast<String>();
    vehicles = json['vehicles'].cast<String>();
    starships = json['starships'].cast<String>();
    created = json['created'];
    edited = json['edited'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['name'] = name;
    data['height'] = height;
    data['mass'] = mass;
    data['hair_color'] = hairColor;
    data['skin_color'] = skinColor;
    data['eye_color'] = eyeColor;
    data['birth_year'] = birthYear;
    data['gender'] = gender;
    data['homeworld'] = homeworld;
    data['films'] = films;
    data['vehicles'] = vehicles;
    data['starships'] = starships;
    data['created'] = created;
    data['edited'] = edited;
    data['url'] = url;
    return data;
  }
}
*/

/*
class Personagem {
  int? count;
  String? next;
  Null? previous;
  List<Results>? results;

  Personagem({this.count, this.next, this.previous, this.results});

  Personagem.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    next = json['next'];
    previous = json['previous'];
    if (json['results'] != null) {
      results = <Results>[];
      json['results'].forEach((v) {
        results!.add(Results.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['count'] = count;
    data['next'] = next;
    data['previous'] = previous;
    if (results != null) {
      data['results'] = results!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Results {
  String? name;
  String? height;
  String? mass;
  String? hairColor;
  String? skinColor;
  String? eyeColor;
  String? birthYear;
  String? gender;
  String? homeworld;
  List<String>? films;
  List<String>? species;
  List<String>? vehicles;
  List<String>? starships;
  String? created;
  String? edited;
  String? url;

  Results(
      {this.name,
      this.height,
      this.mass,
      this.hairColor,
      this.skinColor,
      this.eyeColor,
      this.birthYear,
      this.gender,
      this.homeworld,
      this.films,
      this.species,
      this.vehicles,
      this.starships,
      this.created,
      this.edited,
      this.url});

  Results.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    height = json['height'];
    mass = json['mass'];
    hairColor = json['hair_color'];
    skinColor = json['skin_color'];
    eyeColor = json['eye_color'];
    birthYear = json['birth_year'];
    gender = json['gender'];
    homeworld = json['homeworld'];
    films = json['films'].cast<String>();
    species = json['species'].cast<String>();
    vehicles = json['vehicles'].cast<String>();
    starships = json['starships'].cast<String>();
    created = json['created'];
    edited = json['edited'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['name'] = name;
    data['height'] = height;
    data['mass'] = mass;
    data['hair_color'] = hairColor;
    data['skin_color'] = skinColor;
    data['eye_color'] = eyeColor;
    data['birth_year'] = birthYear;
    data['gender'] = gender;
    data['homeworld'] = homeworld;
    data['films'] = films;
    data['species'] = species;
    data['vehicles'] = vehicles;
    data['starships'] = starships;
    data['created'] = created;
    data['edited'] = edited;
    data['url'] = url;
    return data;
  }
}
*/