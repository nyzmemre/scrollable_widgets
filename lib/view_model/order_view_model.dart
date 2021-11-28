import 'package:flutter/material.dart';
import 'package:scrollable_widgets/model/order.dart';

class OrderViewModel extends ChangeNotifier{
  List<Order> _orderDetails=[];
  int quantity=1;

  increaseQuantity(){
    quantity++;
    notifyListeners();
  }

  decreaseQuantity(){
    if(quantity!=1) quantity--;

    notifyListeners();
  }

List<Order> get orderDetails=>_orderDetails;
}