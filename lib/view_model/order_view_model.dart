import 'package:flutter/material.dart';
import 'package:scrollable_widgets/model/order.dart';
import 'package:scrollable_widgets/utils/constant/my_color.dart';

class OrderViewModel extends ChangeNotifier {
  List<Order> _orderDetails = [];
  int quantity = 1;
  List<ColorModel> _colorList = [
    ColorModel(false, kPink),
    ColorModel(false, kBrown),
    ColorModel(false, kBlack),
    ColorModel(false, kTurquoise),
    ColorModel(false, kTYellow)
  ];
  List<SizeModel> _sizeChart = [
    SizeModel(false, 7),
    SizeModel(false, 8),
    SizeModel(false, 9),
    SizeModel(false, 10),
    SizeModel(false, 11),
    SizeModel(false, 12)
  ];

  increaseQuantity() {
    quantity++;
    notifyListeners();
  }

  decreaseQuantity() {
    if (quantity != 1) quantity--;

    notifyListeners();
  }

  List<Order> get orderDetails => _orderDetails;

  isSelected(int index, List<dynamic> list) {
    for (int i = 0; i < list.length; i++) {
      list[i].isSelected = false;
    }
    list[index].isSelected = !list[index].isSelected;
    notifyListeners();
  }

  List<ColorModel> get colorList => _colorList;

  List<SizeModel> get sizeChart => _sizeChart;
}
