import 'package:flutter/material.dart';

class MobileDimensions
{
  static var height = 0.0;
  static var width = 0.0;

  static double getHeight(context)
  {
    height = MediaQuery.of(context).size.height;
    return height;
  }

  static double getWidth(context)
  {
    width = MediaQuery.of(context).size.width;
    return width;
  }


}