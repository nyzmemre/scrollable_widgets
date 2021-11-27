import 'package:flutter/material.dart';

class ShoesModel {
  String url;
  double price;
  String details;
  String shoesTag;
  int? stock;
  List<int>? sizeChart;
  List<Color>? colorChart;

  ShoesModel(this.url, this.price, this.details, this.shoesTag, this.colorChart, this.sizeChart, this.stock);
}
