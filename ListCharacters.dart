class ListCharacters {
    Info info;
    List<Result> results;

    ListCharacters({
       required this.info,
       required this.results,
    });
}

class Info {
    int count;
    int pages;
    String next;
    dynamic prev;

    Info({
      required  this.count,
      required  this.pages,
      required  this.next,
      required  this.prev,
    });
}

class Result {
    int id;
    String name;
    Status status;
    Species species;
    String type;
    Gender gender;
    Location origin;
    Location location;
    String image;
    List<String> episode;
    String url;
    String created;

    Result({
       required this.id,
       required this.name,
       required this.status,
       required this.species,
       required this.type,
       required this.gender,
       required this.origin,
       required this.location,
       required this.image,
       required this.episode,
       required this.url,
       required this.created,
    });
}

enum Gender { MALE, FEMALE, UNKNOWN }

class Location {
    String name;
    String url;

    Location({
       required this.name,
       required this.url,
    });
}

enum Species { HUMAN, ALIEN }

enum Status { ALIVE, UNKNOWN, DEAD }
