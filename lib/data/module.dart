import 'package:flutter/cupertino.dart';

class Module {
  String id;
  String name;
  String description;
  String image;
  bool isComingSoon;

  Module(
      {@required this.id,
      @required this.name,
      @required this.description,
      @required this.image,
      @required this.isComingSoon});
}
