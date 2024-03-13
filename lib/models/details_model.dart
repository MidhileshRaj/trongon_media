class Details {
  num? id;
  String? url;
  String? name;
  String? type;
  String? language;
  List<String>? genres;
  String? status;
  num? runtime;
  num? averageRuntime;
  String? premiered;
  String? ended;
  String? officialSite;
  Schedule? schedule;
  Rating? rating;
  num? weight;
  Network? network;
  Null? webChannel;
  Null? dvdCountry;
  Externals? externals;
  Image? image;
  String? summary;
  num? updated;
  Links? lLinks;

  Details(
      {this.id,
        this.url,
        this.name,
        this.type,
        this.language,
        this.genres,
        this.status,
        this.runtime,
        this.averageRuntime,
        this.premiered,
        this.ended,
        this.officialSite,
        this.schedule,
        this.rating,
        this.weight,
        this.network,
        this.webChannel,
        this.dvdCountry,
        this.externals,
        this.image,
        this.summary,
        this.updated,
        this.lLinks});

  Details.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    url = json['url'];
    name = json['name'];
    type = json['type'];
    language = json['language'];
    genres = json['genres'].cast<String>();
    status = json['status'];
    runtime = json['runtime'];
    averageRuntime = json['averageRuntime'];
    premiered = json['premiered'];
    ended = json['ended'];
    officialSite = json['officialSite'];
    schedule = json['schedule'] != null
        ? new Schedule.fromJson(json['schedule'])
        : null;
    rating =
    json['rating'] != null ? new Rating.fromJson(json['rating']) : null;
    weight = json['weight'];
    network =
    json['network'] != null ? new Network.fromJson(json['network']) : null;
    webChannel = json['webChannel'];
    dvdCountry = json['dvdCountry'];
    externals = json['externals'] != null
        ? new Externals.fromJson(json['externals'])
        : null;
    image = json['image'] != null ? new Image.fromJson(json['image']) : null;
    summary = json['summary'];
    updated = json['updated'];
    lLinks = json['_links'] != null ? new Links.fromJson(json['_links']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['url'] = this.url;
    data['name'] = this.name;
    data['type'] = this.type;
    data['language'] = this.language;
    data['genres'] = this.genres;
    data['status'] = this.status;
    data['runtime'] = this.runtime;
    data['averageRuntime'] = this.averageRuntime;
    data['premiered'] = this.premiered;
    data['ended'] = this.ended;
    data['officialSite'] = this.officialSite;
    if (this.schedule != null) {
      data['schedule'] = this.schedule!.toJson();
    }
    if (this.rating != null) {
      data['rating'] = this.rating!.toJson();
    }
    data['weight'] = this.weight;
    if (this.network != null) {
      data['network'] = this.network!.toJson();
    }
    data['webChannel'] = this.webChannel;
    data['dvdCountry'] = this.dvdCountry;
    if (this.externals != null) {
      data['externals'] = this.externals!.toJson();
    }
    if (this.image != null) {
      data['image'] = this.image!.toJson();
    }
    data['summary'] = this.summary;
    data['updated'] = this.updated;
    if (this.lLinks != null) {
      data['_links'] = this.lLinks!.toJson();
    }
    return data;
  }
}

class Schedule {
  String? time;
  List<String>? days;

  Schedule({this.time, this.days});

  Schedule.fromJson(Map<String, dynamic> json) {
    time = json['time'];
    days = json['days'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['time'] = this.time;
    data['days'] = this.days;
    return data;
  }
}

class Rating {
  num? average;

  Rating({this.average});

  Rating.fromJson(Map<String, dynamic> json) {
    average = json['average'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['average'] = this.average;
    return data;
  }
}

class Network {
  num? id;
  String? name;
  Country? country;
  Null? officialSite;

  Network({this.id, this.name, this.country, this.officialSite});

  Network.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    country =
    json['country'] != null ? new Country.fromJson(json['country']) : null;
    officialSite = json['officialSite'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    if (this.country != null) {
      data['country'] = this.country!.toJson();
    }
    data['officialSite'] = this.officialSite;
    return data;
  }
}

class Country {
  String? name;
  String? code;
  String? timezone;

  Country({this.name, this.code, this.timezone});

  Country.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    code = json['code'];
    timezone = json['timezone'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['code'] = this.code;
    data['timezone'] = this.timezone;
    return data;
  }
}

class Externals {
  num? tvrage;
  num? thetvdb;
  String? imdb;

  Externals({this.tvrage, this.thetvdb, this.imdb});

  Externals.fromJson(Map<String, dynamic> json) {
    tvrage = json['tvrage'];
    thetvdb = json['thetvdb'];
    imdb = json['imdb'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['tvrage'] = this.tvrage;
    data['thetvdb'] = this.thetvdb;
    data['imdb'] = this.imdb;
    return data;
  }
}

class Image {
  String? medium;
  String? original;

  Image({this.medium, this.original});

  Image.fromJson(Map<String, dynamic> json) {
    medium = json['medium'];
    original = json['original'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['medium'] = this.medium;
    data['original'] = this.original;
    return data;
  }
}

class Links {
  Self? self;
  Self? previousepisode;

  Links({this.self, this.previousepisode});

  Links.fromJson(Map<String, dynamic> json) {
    self = json['self'] != null ? new Self.fromJson(json['self']) : null;
    previousepisode = json['previousepisode'] != null
        ? new Self.fromJson(json['previousepisode'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.self != null) {
      data['self'] = this.self!.toJson();
    }
    if (this.previousepisode != null) {
      data['previousepisode'] = this.previousepisode!.toJson();
    }
    return data;
  }
}

class Self {
  String? href;

  Self({this.href});

  Self.fromJson(Map<String, dynamic> json) {
    href = json['href'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['href'] = this.href;
    return data;
  }
}