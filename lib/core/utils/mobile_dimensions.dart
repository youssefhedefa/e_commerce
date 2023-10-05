import 'package:flutter/material.dart';

class MobileDimensions
{
  static var _height = 0.0;
  static var _width = 0.0;

  static double getHeight(context)
  {
    _height = MediaQuery.of(context).size.height;
    return _height;
  }

  static double getWidth(context)
  {
    _width = MediaQuery.of(context).size.width;
    return _width;
  }


}