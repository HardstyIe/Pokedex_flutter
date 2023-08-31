class UserModel {
  UserModel({
    required this.pokedexId,
    required this.generation,
    required this.category,
    required this.name,
    required this.sprites,
    required this.types,
    required this.talents,
    required this.stats,
    required this.resistances,
    required this.evolution,
    required this.height,
    required this.weight,
    required this.eggGroups,
    required this.sexe,
    required this.catchRate,
    required this.level100,
    required this.forme,
    required this.next,
  });

  final num pokedexId;
  final num generation;
  final String category;
  final Name? name;
  final Sprites? sprites;
  final List<Type> types;
  final List<Talent> talents;
  final Stats? stats;
  final List<Resistance> resistances;
  final Evolution? evolution;
  final String height;
  final String weight;
  final List<String> eggGroups;
  final Sexe? sexe;
  final num catchRate;
  final num level100;
  final List<Forme> forme;
  final dynamic next;

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      pokedexId: json["pokedexId"] ?? 0,
      generation: json["generation"] ?? 0,
      category: json["category"] ?? "",
      name: json["name"] == null ? null : Name.fromJson(json["name"]),
      sprites:
          json["sprites"] == null ? null : Sprites.fromJson(json["sprites"]),
      types: json["types"] == null
          ? []
          : List<Type>.from(json["types"]!.map((x) => Type.fromJson(x))),
      talents: json["talents"] == null
          ? []
          : List<Talent>.from(json["talents"]!.map((x) => Talent.fromJson(x))),
      stats: json["stats"] == null ? null : Stats.fromJson(json["stats"]),
      resistances: json["resistances"] == null
          ? []
          : List<Resistance>.from(
              json["resistances"]!.map((x) => Resistance.fromJson(x))),
      evolution: json["evolution"] == null
          ? null
          : Evolution.fromJson(json["evolution"]),
      height: json["height"] ?? "",
      weight: json["weight"] ?? "",
      eggGroups: json["egg_groups"] == null
          ? []
          : List<String>.from(json["egg_groups"]!.map((x) => x)),
      sexe: json["sexe"] == null ? null : Sexe.fromJson(json["sexe"]),
      catchRate: json["catch_rate"] ?? 0,
      level100: json["level_100"] ?? 0,
      forme: json["forme"] == null
          ? []
          : List<Forme>.from(json["forme"]!.map((x) => Forme.fromJson(x))),
      next: json["next"],
    );
  }

  Map<String, dynamic> toJson() => {
        "pokedexId": pokedexId,
        "generation": generation,
        "category": category,
        "name": name?.toJson(),
        "sprites": sprites?.toJson(),
        "types": types.map((x) => x.toJson()).toList(),
        "talents": talents.map((x) => x.toJson()).toList(),
        "stats": stats?.toJson(),
        "resistances": resistances.map((x) => x.toJson()).toList(),
        "evolution": evolution?.toJson(),
        "height": height,
        "weight": weight,
        "egg_groups": eggGroups.map((x) => x).toList(),
        "sexe": sexe?.toJson(),
        "catch_rate": catchRate,
        "level_100": level100,
        "forme": forme.map((x) => x.toJson()).toList(),
        "next": next,
      };

  @override
  String toString() {
    return "$pokedexId, $generation, $category, $name, $sprites, $types, $talents, $stats, $resistances, $evolution, $height, $weight, $eggGroups, $sexe, $catchRate, $level100, $forme, $next, ";
  }
}

class Evolution {
  Evolution({
    required this.pre,
    required this.next,
    required this.mega,
  });

  final List<Next> pre;
  final List<Next> next;
  final List<Mega> mega;

  factory Evolution.fromJson(Map<String, dynamic> json) {
    return Evolution(
      pre: json["pre"] == null
          ? []
          : List<Next>.from(json["pre"]!.map((x) => Next.fromJson(x))),
      next: json["next"] == null
          ? []
          : List<Next>.from(json["next"]!.map((x) => Next.fromJson(x))),
      mega: json["mega"] == null
          ? []
          : List<Mega>.from(json["mega"]!.map((x) => Mega.fromJson(x))),
    );
  }

  Map<String, dynamic> toJson() => {
        "pre": pre.map((x) => x.toJson()).toList(),
        "next": next.map((x) => x.toJson()).toList(),
        "mega": mega.map((x) => x.toJson()).toList(),
      };

  @override
  String toString() {
    return "$pre, $next, $mega, ";
  }
}

class Mega {
  Mega({
    required this.orbe,
    required this.sprites,
  });

  final String orbe;
  final Gmax? sprites;

  factory Mega.fromJson(Map<String, dynamic> json) {
    return Mega(
      orbe: json["orbe"] ?? "",
      sprites: json["sprites"] == null ? null : Gmax.fromJson(json["sprites"]),
    );
  }

  Map<String, dynamic> toJson() => {
        "orbe": orbe,
        "sprites": sprites?.toJson(),
      };

  @override
  String toString() {
    return "$orbe, $sprites, ";
  }
}

class Gmax {
  Gmax({
    required this.regular,
    required this.shiny,
  });

  final String regular;
  final String shiny;

  factory Gmax.fromJson(Map<String, dynamic> json) {
    return Gmax(
      regular: json["regular"] ?? "",
      shiny: json["shiny"] ?? "",
    );
  }

  Map<String, dynamic> toJson() => {
        "regular": regular,
        "shiny": shiny,
      };

  @override
  String toString() {
    return "$regular, $shiny, ";
  }
}

class Next {
  Next({
    required this.pokedexId,
    required this.name,
    required this.condition,
  });

  final num pokedexId;
  final String name;
  final String condition;

  factory Next.fromJson(Map<String, dynamic> json) {
    return Next(
      pokedexId: json["pokedexId"] ?? 0,
      name: json["name"] ?? "",
      condition: json["condition"] ?? "",
    );
  }

  Map<String, dynamic> toJson() => {
        "pokedexId": pokedexId,
        "name": name,
        "condition": condition,
      };

  @override
  String toString() {
    return "$pokedexId, $name, $condition, ";
  }
}

class Forme {
  Forme({
    required this.alola,
    required this.galar,
    required this.hisui,
    required this.paldea,
  });

  final String alola;
  final String galar;
  final String hisui;
  final String paldea;

  factory Forme.fromJson(Map<String, dynamic> json) {
    return Forme(
      alola: json["alola"] ?? "",
      galar: json["galar"] ?? "",
      hisui: json["hisui"] ?? "",
      paldea: json["paldea"] ?? "",
    );
  }

  Map<String, dynamic> toJson() => {
        "alola": alola,
        "galar": galar,
        "hisui": hisui,
        "paldea": paldea,
      };

  @override
  String toString() {
    return "$alola, $galar, $hisui, $paldea, ";
  }
}

class Name {
  Name({
    required this.fr,
    required this.en,
    required this.jp,
  });

  final String fr;
  final String en;
  final String jp;

  factory Name.fromJson(Map<String, dynamic> json) {
    return Name(
      fr: json["fr"] ?? "",
      en: json["en"] ?? "",
      jp: json["jp"] ?? "",
    );
  }

  Map<String, dynamic> toJson() => {
        "fr": fr,
        "en": en,
        "jp": jp,
      };

  @override
  String toString() {
    return "$fr, $en, $jp, ";
  }
}

class Resistance {
  Resistance({
    required this.name,
    required this.multiplier,
  });

  final String name;
  final num multiplier;

  factory Resistance.fromJson(Map<String, dynamic> json) {
    return Resistance(
      name: json["name"] ?? "",
      multiplier: json["multiplier"] ?? 0,
    );
  }

  Map<String, dynamic> toJson() => {
        "name": name,
        "multiplier": multiplier,
      };

  @override
  String toString() {
    return "$name, $multiplier, ";
  }
}

class Sexe {
  Sexe({
    required this.male,
    required this.female,
  });

  final num male;
  final num female;

  factory Sexe.fromJson(Map<String, dynamic> json) {
    return Sexe(
      male: json["male"] ?? 0,
      female: json["female"] ?? 0,
    );
  }

  Map<String, dynamic> toJson() => {
        "male": male,
        "female": female,
      };

  @override
  String toString() {
    return "$male, $female, ";
  }
}

class Sprites {
  Sprites({
    required this.regular,
    required this.shiny,
    required this.gmax,
  });

  final String regular;
  final String shiny;
  final Gmax? gmax;

  factory Sprites.fromJson(Map<String, dynamic> json) {
    return Sprites(
      regular: json["regular"] ?? "",
      shiny: json["shiny"] ?? "",
      gmax: json["gmax"] == null ? null : Gmax.fromJson(json["gmax"]),
    );
  }

  Map<String, dynamic> toJson() => {
        "regular": regular,
        "shiny": shiny,
        "gmax": gmax?.toJson(),
      };

  @override
  String toString() {
    return "$regular, $shiny, $gmax, ";
  }
}

class Stats {
  Stats({
    required this.hp,
    required this.atk,
    required this.def,
    required this.speAtk,
    required this.speDef,
    required this.vit,
  });

  final num hp;
  final num atk;
  final num def;
  final num speAtk;
  final num speDef;
  final num vit;

  factory Stats.fromJson(Map<String, dynamic> json) {
    return Stats(
      hp: json["hp"] ?? 0,
      atk: json["atk"] ?? 0,
      def: json["def"] ?? 0,
      speAtk: json["spe_atk"] ?? 0,
      speDef: json["spe_def"] ?? 0,
      vit: json["vit"] ?? 0,
    );
  }

  Map<String, dynamic> toJson() => {
        "hp": hp,
        "atk": atk,
        "def": def,
        "spe_atk": speAtk,
        "spe_def": speDef,
        "vit": vit,
      };

  @override
  String toString() {
    return "$hp, $atk, $def, $speAtk, $speDef, $vit, ";
  }
}

class Talent {
  Talent({
    required this.name,
    required this.tc,
  });

  final String name;
  final bool tc;

  factory Talent.fromJson(Map<String, dynamic> json) {
    return Talent(
      name: json["name"] ?? "",
      tc: json["tc"] ?? false,
    );
  }

  Map<String, dynamic> toJson() => {
        "name": name,
        "tc": tc,
      };

  @override
  String toString() {
    return "$name, $tc, ";
  }
}

class Type {
  Type({
    required this.name,
    required this.image,
  });

  final String name;
  final String image;

  factory Type.fromJson(Map<String, dynamic> json) {
    return Type(
      name: json["name"] ?? "",
      image: json["image"] ?? "",
    );
  }

  Map<String, dynamic> toJson() => {
        "name": name,
        "image": image,
      };

  @override
  String toString() {
    return "$name, $image, ";
  }
}
