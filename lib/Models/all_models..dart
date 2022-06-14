// ignore_for_file: prefer_typing_uninitialized_variables, non_constant_identifier_names, camel_case_types, file_names

import 'dart:ui';

class OnboardingInfo {
  final image;
  final title;
  final description;
  final anothertitle;
  OnboardingInfo(this.image, this.title, this.description, this.anothertitle);
}

class Crew {
  final String image;
  final String Name;
  final int id;
  bool selected;

  Crew(this.image, this.Name, this.id, this.selected);
}

// class Findcrew {
//   final String image;
//   final String Name;

//   Findcrew(this.image, this.Name);
// }

class Tags {
  final String tags;
  bool select;
  Tags(this.tags, this.select);
}

class crew {
  String image;
  Color color;
  crew(this.image, this.color);
}

class highlights {
  String image;
  String name;
  highlights(this.image, this.name);
}

class post1 {
  String image;
  String centreicon;
  post1(this.image, this.centreicon);
}

class post2 {
  String image;

  post2(this.image);
}

class emojis {
  String emoji;
  String name;
  emojis(this.emoji, this.name);
}

class people {
  String image;
  String name;
  people(this.image, this.name);
}

class FeedStoryimage {
  final String image;
  final String name;
  FeedStoryimage(this.image, this.name);
}

class FeedPost {
  final String profileimage;
  final String profilename;
  final String posttime;
  final String Feedimage;
  final String centreimage;
  final String Text;
  final String Text2;
  FeedPost(this.profileimage, this.profilename, this.posttime, this.Feedimage,
      this.centreimage, this.Text, this.Text2);
}

class Places {
  final int id;
  final String image;
  String name;
  final String place;
  Places(this.id, this.image, this.name, this.place);
}

class Events {
  final int id;
  final String image;
  final String name;
  final String date;
  Events(this.id, this.image, this.name, this.date);
}

class chats {
  final String image;
  final String title;
  final String crew;
  final String subtitle;
  final String time;
  final String message;
  chats(this.image, this.title, this.crew, this.subtitle, this.time,
      this.message);
}

class votes {
  String image;
  Color color;
  String text;
  votes(this.image, this.color, this.text);
}

class fetch {
  String image;
  String name;
  fetch(this.image, this.name);
}
