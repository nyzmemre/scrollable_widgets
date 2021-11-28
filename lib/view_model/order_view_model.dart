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
  List<int> _sizeChart = [7, 8, 9, 10, 11, 12];

  increaseQuantity() {
    quantity++;
    notifyListeners();
  }

  decreaseQuantity() {
    if (quantity != 1) quantity--;

    notifyListeners();
  }

  List<Order> get orderDetails => _orderDetails;

  isSelected(int index){
    for(int i=0; i<_colorList.length; i++ ){
      _colorList[i].isSelected=false;
    }
    _colorList[index].isSelected=!_colorList[index].isSelected;
notifyListeners();
  }


  List<ColorModel> get colorList => _colorList;
}
