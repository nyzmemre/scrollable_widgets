import 'package:flutter/material.dart';
class ColorModel{
  bool isSelected;
  Color color;
  ColorModel(this.isSelected, this.color);
}
class Order{
  Color? color;
  int? sizeChart;
  int? quantity;
  double? price;
  String? url;

  Order(this.color, this.sizeChart, this.quantity, this.price, this.url);
}

class SizeModel{
  bool isSelected;
  int size;

  SizeModel(this.isSelected, this.size);
}