class Personagem{
  final nome = [
    {"nome":"Luke Skywalker", "avatar":"http://especiais.ne10.uol.com.br/starwars/wp-content/uploads/2015/12/luke-300x300.png"},
    {"nome":"Princesa Leia", "avatar":"http://especiais.ne10.uol.com.br/starwars/wp-content/uploads/2015/12/leia-1-300x300.png"},
    {"nome":"Han Solo", "avatar":"http://especiais.ne10.uol.com.br/starwars/wp-content/uploads/2015/12/han_solo-300x300.png"},
    {"nome":"Darth Vader", "avatar":"http://especiais.ne10.uol.com.br/starwars/wp-content/uploads/2015/12/darth_vader-300x300.png"},
    {"nome": "R2-D2", "avatar": "http://especiais.ne10.uol.com.br/starwars/wp-content/uploads/2015/12/R2D2-300x300.png"},
    {"nome": "C-3PO", "avatar": "http://especiais.ne10.uol.com.br/starwars/wp-content/uploads/2015/12/C3PO-300x300.png"},
    {"nome": "Chewbacca", "avatar": "http://especiais.ne10.uol.com.br/starwars/wp-content/uploads/2015/12/chewbacca-300x300.png"},
    {"nome": "Obi-Wan Kenobi", "avatar": "http://especiais.ne10.uol.com.br/starwars/wp-content/uploads/2015/12/obi_wan_kenobi-300x300.png"},
    {"nome": "Yoda", "avatar": "http://especiais.ne10.uol.com.br/starwars/wp-content/uploads/2015/12/yoda-300x300.png"},
    {"nome": "Padmé Amidala", "avatar": "http://especiais.ne10.uol.com.br/starwars/wp-content/uploads/2015/12/amidala-300x300.png"},
    {"nome": "Stormtrooper", "avatar": "http://especiais.ne10.uol.com.br/starwars/wp-content/uploads/2015/12/stormtrooper-300x300.png"},
    {"nome": "Darth Sidious", "avatar": "http://especiais.ne10.uol.com.br/starwars/wp-content/uploads/2015/12/darth_sidious-1-300x300.png"},
    {"nome": "Lando Calrissian", "avatar": "http://especiais.ne10.uol.com.br/starwars/wp-content/uploads/2015/12/lando-300x300.png"},
    {"nome": "Rey", "avatar": "http://especiais.ne10.uol.com.br/starwars/wp-content/uploads/2015/12/rey-300x300.png"},
    {"nome": "Finn", "avatar": "http://especiais.ne10.uol.com.br/starwars/wp-content/uploads/2015/12/finn-300x300.png"},
    {"nome": "Poe Dameron", "avatar": "http://especiais.ne10.uol.com.br/starwars/wp-content/uploads/2015/12/poe_dameron-300x300.png"},
    {"nome": "Kylo Ren", "avatar": "http://especiais.ne10.uol.com.br/starwars/wp-content/uploads/2015/12/kylo_ren-300x300.png"},
    {"nome": "General Hux", "avatar": "http://especiais.ne10.uol.com.br/starwars/wp-content/uploads/2015/12/general_hux-300x300.png"},
    {"nome": "Capitã Phasma", "avatar": "http://especiais.ne10.uol.com.br/starwars/wp-content/uploads/2015/12/pashma-300x300.png"},
    {"nome": "Qui-Gon Jinn", "avatar": "http://especiais.ne10.uol.com.br/starwars/wp-content/uploads/2015/12/quin_gon_jinn-300x300.png"},
    {"nome": "Mace Windu", "avatar": "http://especiais.ne10.uol.com.br/starwars/wp-content/uploads/2015/12/mace-300x300.png"},
    {"nome": "Jabba o Hutt", "avatar": "http://especiais.ne10.uol.com.br/starwars/wp-content/uploads/2015/12/jabba-300x300.png"},
    {"nome": "Boba Fett", "avatar": "http://especiais.ne10.uol.com.br/starwars/wp-content/uploads/2015/12/boba-300x300.png"},
    {"nome": "Conde Dooku", "avatar": "http://especiais.ne10.uol.com.br/starwars/wp-content/uploads/2015/12/dooku-300x300.png"},
    {"nome": "Governador Tarkin", "avatar": "http://especiais.ne10.uol.com.br/starwars/wp-content/uploads/2015/12/general_tarkin-1-300x300.png"},
    {"nome": "Almirante Ackbar", "avatar": "http://especiais.ne10.uol.com.br/starwars/wp-content/uploads/2015/12/ackbar-300x300.png"},
    {"nome": "General Grievous", "avatar": "http://especiais.ne10.uol.com.br/starwars/wp-content/uploads/2015/12/grievous-300x300.png"},
    {"nome": "Jango Fett", "avatar": "http://especiais.ne10.uol.com.br/starwars/wp-content/uploads/2015/12/jango-300x300.png"},
    {"nome": "Darth Maul", "avatar": "http://especiais.ne10.uol.com.br/starwars/wp-content/uploads/2015/12/darth_maul-300x300.png"},
    {"nome": "Jar Jar Binks", "avatar": "http://especiais.ne10.uol.com.br/starwars/wp-content/uploads/2015/12/jar_jar-300x300.png"},
    {"nome": "Palpatine", "avatar": "http://especiais.ne10.uol.com.br/starwars/wp-content/uploads/2015/12/palpatine-1-300x300.png"},
    {"nome": "Anakin Skywalker", "avatar": "http://especiais.ne10.uol.com.br/starwars/wp-content/uploads/2015/12/anakin-300x300.png"},
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