import 'package:flutter/material.dart';

Color paint(String time) {
  var color = Colors.black;

  if (time == "Today") {
    color = Colors.blue;
  } else if (time == "Yesterday") {
    color = Colors.yellow;
  } else {
    color = Colors.grey;
  }
  return color;
}
