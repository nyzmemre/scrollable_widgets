import 'package:flutter/material.dart';
class ColorModel{
  bool isSelected;
  Color color;
  ColorModel(this.isSelected, this.color);
}
class Order{
  String? url;
  Color? color;
  int? sizeChart;
  int? quantity;
  double? price;


  Order(this.url, this.color, this.sizeChart, this.quantity, this.price, );
}

class SizeModel{
  bool isSelected;
  int size;

  SizeModel(this.isSelected, this.size);
}