import 'package:flutter/material.dart';

textSize(context, percentage) {
  double screenWidth = MediaQuery.of(context).size.width;
  return screenWidth * percentage;
}
